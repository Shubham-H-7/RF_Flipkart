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
    Wait Until Element Is Visible  ${Electronics}
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

Click on 'Smart Watches' sub category   
    Wait Until Element Is Visible  ${subcategory_wearable}
    ${subcategory_count} =  Get Element Count  xpath=//div/a[@class='_2SqgSY']
    Log to Console  ${subcategory_count}
    sleep  2s
    FOR  ${j}  IN RANGE  1  ${subcategory_count}
        ${dynamic_subcateg_name} =  Get Text  xpath=(//div/a[@class='_2SqgSY'])[${j}]
        Log to Console  ${dynamic_subcateg_name}
        Exit For Loop If  '${dynamic_subcateg_name}' == '${Expected_subcategory}'
    END
    Set Test Variable  ${static_subcateg_name}  xpath=(//div/a[@class='_2SqgSY'])[${j}]
    Log to Console  step 5 done

Click on 'smart watch'
    Click Element  ${static_subcateg_name}
    Log to Console  step 6 done

Click on 'fossil 4th gen Watch'
    Execute Javascript  window.scrollTo(0,300)
    Wait Until Element Is Visible  ${fossil_subcateg}
    Click Element  ${fossil_subcateg}
    sleep  2s
    Click Element  ${watch}
    Log to Console  step 7 done
    
Add product to 'My cart'
    Switch Window  NEW
    Click Element  ${add-to-cart}
    sleep  2s
    Log to Console  Step 8 is done

Verify product in cart
    Click Element  ${Home_page}
    sleep  2s
    Click Element  ${Cart}
    Verify WebPage title  ${Expected_product_name}
    Log to Console  Step 9

Verify WebPage title
    [Arguments]  ${title_n}
    Wait Until Page Contains  ${title_n}
    Log to Console  Pass!!