*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

*** Test Cases ***
User should be able to add product to cart 
    [Tags]  smoke
    Open Flipkart website
    Login with valid user
    Go to 'Electronics' section
    Click on 'Smart Wearable Tech' sub category
    Click on 'Smart Watches' sub category
    Click on 'smart watch'
    Click on 'fossil 4th gen Watch'
    Add product to 'My cart'
    Verify product in cart
