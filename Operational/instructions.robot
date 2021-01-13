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

Go to 'Electronics' section
    sleep  3s
    Mouse Over  ${Electronics}
    ${category_count} =  Get Element Count  xpath=//a[@class='_3QN6WI _1MMnri _32YDvl']
    sleep  2s
    FOR  ${i}  IN RANGE  2  ${category_count}
        ${dynamic_categ_name} =  Get Text  xpath=(//a[@class='_3QN6WI _1MMnri _32YDvl'])[${i}]
        Log to Console  ${dynamic_categ_name}
        Exit For Loop If  '${dynamic_categ_name}' == '${Expected_category}'
    END
    Set Test Variable  ${static_categ_name}  xpath=(//a[@class='_3QN6WI _1MMnri _32YDvl'])[${i}]
    Log to Console  Step 3 done

Click on 'Smart Wearable Tech' sub category
    Click Element  ${static_categ_name}
    Log to Console  Step 4 done

Verify WebPage title
    [Arguments]  ${title_n}
    Wait Until Page Contains  ${title_n}
    Log to Console  Pass!!