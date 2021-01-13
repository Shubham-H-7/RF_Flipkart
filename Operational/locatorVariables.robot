*** Variables ***

${url} =  https://www.flipkart.com/
${brows} =  gc
${Expected_homepage} =  Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers! 
${un} =  //div/input[@class='_2IX_2- VJZDxU']
${mob} =  7892188036
${pwd} =  //div/input[@class='_2IX_2- _3mctLh VJZDxU']
${pass} =  Moolya@2021
${login} =  xpath=(//button[@type='submit'])[2]
${Electronics} =  xpath=//div/span[.='Electronics']
${Expected_category} =  Smart Wearable Tech
${Expected_subcategory} =  Smart Watches
${subcategory_wearable} =  xpath=//a[@title='Wearable Smart Devices']
${Smart-wearble-tech} =  xpath=//div/a[.='Smart Wearable Tech']
${Smart-watches} =  xpath=//section/div/div/a[@title='Smart Watches']
${fossil_subcateg} =  xpath=(//div[@class='_3879cV'])[2]
${watch} =  xpath=(//div[.='Fossil 4th Gen Explorist HR Smartwatch'])[2]
${add-to-cart} =  xpath=//div/ul/li/button[@class='_2KpZ6l _2U9uOA _3v1-ww']
${Home_page} =  xpath=//a/img[@title='Flipkart']
${Cart} =  xpath=//a/span[.='Cart']
${Expected_product_name} =  realme Watch S
${Actual_product_name} =  //div/a[.='realme Watch S']