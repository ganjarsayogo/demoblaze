*** Settings ***
Documentation           Order Feature Test
Resource                ../Resources/orderKeywords.robot
Test Setup              Open Browser Chrome
Test Teardown           Close Browser

*** Test Cases ***

Order a Product with all data filled
    Successfully Login
    Choose Phone Category
    Choose Samsung Galaxy S6
    Verify Navigate to a product
    Continue Add to cart
    Confirm successfull add to cart
    Navigate to Cart Menu
    Verify Product in cart
    Continue to place order
    Verify Form Order Present
    Input Name
    Input Country
    Input City
    Input Credit card
    Input Month
    Input Year
    Continue to purchase the order
    Confirm purchase information present
    Click OK Button

Order a Product with blank form
    Successfully Login
    Choose Phone Category
    Choose Samsung Galaxy S6
    Verify Navigate to a product
    Continue Add to cart
    Confirm successfull add to cart
    Navigate to Cart Menu
    Verify Product in cart
    Continue to place order
    Verify Form Order Present
    Continue to purchase the order
    Confirm fill out order Alert Present

Order a Product without name and credit card data
    Successfully Login
    Choose Phone Category
    Choose Samsung Galaxy S6
    Verify Navigate to a product
    Continue Add to cart
    Confirm successfull add to cart
    Navigate to Cart Menu
    Verify Product in cart
    Continue to place order
    Verify Form Order Present
    Input Country
    Input City
    Input Month
    Input Year
    Continue to purchase the order
    Confirm fill out order Alert Present

Order a Product with only name and credit card data
    Successfully Login
    Choose Phone Category
    Choose Samsung Galaxy S6
    Verify Navigate to a product
    Continue Add to cart
    Confirm successfull add to cart
    Navigate to Cart Menu
    Verify Product in cart
    Continue to place order
    Verify Form Order Present
    Input Name
    Input Credit card
    Continue to purchase the order
    Confirm purchase information present
    Click OK Button