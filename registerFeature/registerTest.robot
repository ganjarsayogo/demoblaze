*** Settings ***
Documentation           Register Feature Test
Resource                ../Resources/registerKeywords.robot
Test Setup              Open Browser Chrome
Test Teardown           Close Browser


*** Test Cases ***
Login with blank username and blank password
    Navigate to Demo Blaze Page
    Navigate to Sign Up Menu
    Click Sign Up Button
    Confirm fill out Alert Present

Login with blank username and valid password
    Navigate to Demo Blaze Page
    Navigate to Sign Up Menu
    Input Password
    Click Sign Up Button
    Confirm fill out Alert Present

Login with valid username and blank password
    Navigate to Demo Blaze Page
    Navigate to Sign Up Menu
    Input Username
    Click Sign Up Button
    Confirm fill out Alert Present

Login with valid username and valid password
    Navigate to Demo Blaze Page
    Navigate to Sign Up Menu
    Input Username
    Input Password
    Click Sign Up Button
    Confirm successfull Alert Present

Login with already registered username and password
    Navigate to Demo Blaze Page
    Navigate to Sign Up Menu
    Input Username
    Input Password
    Click Sign Up Button
    Confirm already exist Alert Present