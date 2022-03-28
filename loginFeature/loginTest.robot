*** Settings ***
Documentation           Login Feature Test
Resource                ../Resources/loginKeywords.robot
Resource                ../Resources/orderKeywords.robot
Test Setup              Open Browser Chrome
Test Teardown           Close Browser

*** Variables ***
&{userName}         valid=ganjar      wrong=aganjar
&{passWord}         valid=ganjar      wrong=ganjarr

*** Test Cases ***
Login with blank username and blank password
    Navigate to Demo Blaze Page
    Navigate to Log in Menu
    Click Log in Button
    Confirm fill out Alert Present

Login with blank username and valid password
    Navigate to Demo Blaze Page
    Navigate to Log in Menu
    Input Password                  ${passWord.valid} 
    Click Log in Button
    Confirm fill out Alert Present

Login with valid username and blank password
    Navigate to Demo Blaze Page
    Navigate to Log in Menu
    Input Username                  ${userName.valid}
    Click Log in Button
    Confirm fill out Alert Present

Login with valid username and wrong password
    Navigate to Demo Blaze Page
    Navigate to Log in Menu
    Input Username                  ${userName.valid}
    Input Password                  ${passWord.wrong}                  
    Click Log in Button
    Confirm wrong password Alert Present

Login with unregistered username and valid password
    Navigate to Demo Blaze Page
    Navigate to Log in Menu
    Input Username                  ${userName.wrong}
    Input Password                  ${passWord.valid}                  
    Click Log in Button
    Confirm user does not exist Alert Present

Login with valid username and valid password
    Navigate to Demo Blaze Page
    Navigate to Log in Menu
    Input Username                  ${userName.valid}
    Input Password                  ${passWord.valid}
    Click Log in Button
    Confirm successfull Login