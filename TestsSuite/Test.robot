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
    
