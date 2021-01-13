*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

*** Keywords ***
Open Flipkart website
    Open Browser  ${url}  ${brows}
    Maximize Browser Window
    sleep  2s
    Verify WebPage title  ${Expected_homepage}
    Log to Console  Step 1 done

Login with valid user
    Wait Until Element Is Visible  ${un}
    Input Text  ${un}  ${mob}
    Input Text  ${pwd}  ${pass}
    Click Element  ${login}
    Log to Console  Step 2 done

Verify WebPage title
    [Arguments]  ${title_n}
    Wait Until Page Contains  ${title_n}
    Log to Console  Pass!! and step 9 final