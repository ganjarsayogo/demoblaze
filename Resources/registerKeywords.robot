*** Settings ***
Library         SeleniumLibrary
Variables       registerLocator.yaml

*** Variables ***
${base_URL}                     https://www.demoblaze.com/index.html

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Navigate to Demo Blaze Page
    Go To                           ${base_URL}

Navigate to Sign Up Menu
    Wait Until Page Contains        Sign up                     5seconds
    Click Element                   ${sign_up_menu}

Input Username
    Wait Until Element Is Visible   ${username_txtbox}          5seconds
    Input Text                      ${username_txtbox}          ganjar

Input Password
    Wait Until Element Is Visible   ${password_txtbox}          5seconds
    Input Text                      ${password_txtbox}          ganjar

Click Sign Up Button
    Wait Until Element Is Visible   ${sign_up_button}           5seconds
    Click Element                   ${sign_up_button}

Click Close Button
    Click Element                   ${close_button}

Confirm fill out Alert Present
    Alert Should Be Present         Please fill out Username and Password.

Confirm already exist Alert Present
    Alert Should Be Present         This user already exist.

Confirm successfull Alert Present
    Alert Should Be Present         Sign up successful.