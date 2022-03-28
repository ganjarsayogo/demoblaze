*** Settings ***
Library         SeleniumLibrary
Variables       loginLocator.yaml
Variables       orderLocator.yaml

*** Variables ***
${base_URL}                     https://www.demoblaze.com/index.html
${username_}                    ganjar
${password_}                    ganjar

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
    Wait Until Element Is Visible   ${username_txtbox}          
    [Arguments]                     ${username_}
    Input Text                      ${username_txtbox}          ${username_}

Input Password
    Wait Until Element Is Visible   ${password_txtbox}             
    [Arguments]                     ${password_} 
    Input Text                      ${password_txtbox}          ${password_}

Click Log in Button
    Wait Until Element Is Visible   ${login_button}             5seconds
    Click Element                   ${login_button}

Confirm successfull Login
    Wait Until Element is Visible   ${success_login}

Successfully Login
    Navigate to Demo Blaze Page
    Navigate to Log in Menu
    Input Username                  ${username_}
    Input Password                  ${password_}
    Click Log in Button
    Confirm successfull Login

Choose Phone Category
    Wait Until Element is Visible   ${phone_cat}
    Click Element                   ${phone_cat}

Choose Samsung Galaxy S6
    Wait Until Page Contains        ${product_selected}
    Click Link                      ${product_selected}

Verify Navigate to a product
    Location Should Be              https://www.demoblaze.com/prod.html?idp_=1

Continue Add to cart
    Wait Until Element Is Visible   ${add_to_cart_button}
    Click Element                   ${add_to_cart_button}

Confirm successfull add to cart
    Alert Should Be Present         Product added.

Navigate to Cart Menu
    Wait Until Element Is Visible   ${cart_menu}
    Click Element                   ${cart_menu}

Verify Product in cart
    Wait Until Page Contains        ${product_selected}
    Page Should Contain             ${product_selected}

Continue to place order
    Wait Until Element Is Visible   ${place_order_button}
    Click Element                   ${place_order_button}

Verify Form Order Present
    Wait Until Element is Visible   ${form_order}

Continue to purchase the order
    Scroll Element Into View        ${purchase_button} 
    Click Element                   ${purchase_button}

Confirm fill out order Alert Present
    Alert Should Be Present         Please fill out Name and Creditcard.

Input Name
    Input Text                      ${name_txtbox}              Ganjar

Input Country
    Input Text                      ${country_txtbox}           Indonesia

Input City
    Input Text                      ${city_txtbox}              Yogyakarta

Input Credit card
    Input Text                      ${cc_txtbox}                12345

Input Month
    Input Text                      ${month_txtbox}             April

Input Year
    Scroll Element Into View        ${year_txtbox} 
    Input Text                      ${year_txtbox}              2077

Confirm purchase information present
    Wait Until Element is Visible   ${purchase_info}

Click OK Button
    Wait Until Element Is Visible   ${ok_button}
    Click Element                   ${ok_button}