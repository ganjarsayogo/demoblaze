*** Settings ***
Library         SeleniumLibrary
Variables       loginLocator.yaml

*** Variables ***
${base_URL}                     https://www.demoblaze.com/index.html

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Navigate to Demo Blaze Page
    Go To                           ${base_URL}

Navigate to Log in Menu
    Wait Until Page Contains        Log in                      5seconds
    Click Element                   ${login_menu}

Input Username
    Wait Until Element Is Visible   ${username_txtbox}          5seconds
    [Arguments]                     ${username}
    Input Text                      ${username_txtbox}          ${username}

Input Password
    Wait Until Element Is Visible   ${password_txtbox}          5seconds
    [Arguments]                     ${password}    
    Input Text                      ${password_txtbox}          ${password}

Click Log in Button
    Wait Until Element Is Visible   ${login_button}           5seconds
    Click Element                   ${login_button}

Click Close Button
    Click Element                   ${close_button}

Confirm fill out Alert Present
    Alert Should Be Present         Please fill out Username and Password.

Confirm successfull Login
    Wait Until Element is Visible   ${success_login}

Confirm wrong password Alert Present
    Alert Should Be Present         Wrong password.

Confirm user does not exist Alert Present
    Alert Should Be Present         User does not exist.