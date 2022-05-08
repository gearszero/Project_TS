*** Settings ***
Documentation  Testing shopping cart and shopping over all, adding sizes and stuffs. Also checking devlivery and payment options and back buttons
Resource  ../data/resources.robot


*** Variables ***


*** Test Cases ***
TC_001 : Test_Searching_Produt_Adding_To_Cart
    [Documentation]     Adding product to shopping cart. Testing sizes, add buttons etc.
    Set Screenshot Directory    ../SCREENSHOTS/SCREENSHOTS - Shopping
    Open_Browser_and_url
    Set Selenium Speed  0.1 seconds
    Search_With_Enter   dresy
    Capture Page Screenshot
    # Chosen Product
    Click Link                  xpath:${LINK_FIRST_PRODUCT}
    Click Element               xpath:${IMG_CHOOSING_DESIGN}
    Element Should Be Visible   xpath:${CHOSEN_PRODUCT}
    Capture Element Screenshot  xpath:${CHOSEN_PRODUCT}
    Add_Size                    ${SELECT_CHOOSE_SEX}  ${SELECT_CHOOSE_SIZE}   ${INPUT_AMOUNT}   ${INDEX_SEX_SELECT}   ${INDEX_SIZE_SELECT}   ${INPUT_AMOUNT_NUMBER}   ${BUTTON_CLICK_PLUS}
    # Adding next size
    Element Should Be Visible   xpath:${BUTTON_ADD_MORE_SIZES}
    Click Button                xpath:${BUTTON_ADD_MORE_SIZES}
    Element Should Be Visible   xpath:${SELECT_CHOOSE_2_SIZE}
    Add_Size    ${SELECT_CHOOSE_SEX}   ${SELECT_CHOOSE_2_SIZE}   ${INPUT_2_AMOUNT}    ${INDEX_SEX_SELECT}   ${INDEX_SIZE_SELECT2}    ${INPUT_AMOUNT_NUMBER2}   ${BUTTON_CLICK_PLIS}
    Element Should Be Visible   xpath:${BUTTON_REMOVE_SIZE}
    Click Button    xpath:${BUTTON_REMOVE_SIZE}
    Scroll Element Into View   xpath:${BUTTON_ADD_PRODUCT}
    Capture Page Screenshot
    Click Button    xpath:${BUTTON_ADD_PRODUCT}
    Wait Until Element Is Visible   xpath:${LINK_WAITING_FOR_POPUP}
    Click Link  xpath:${LINK_WAITING_FOR_POPUP}

TC_002 : Test_ShoppingCart_Button
    [Documentation]     Testing Shopping Cart Button, and matching titles
    Click Element       xpath:${SVG_SHOPPING_CART}
    Capture Page Screenshot
    Title Should Be     Košík - Jadberg

TC_003 : Test_ShoppingCart_Back_Button
    [Documentation]     Testing Back buttons in shopping cart and checking if title matches, Ending back at start
    CLick Link          xpath:${LINK_SHOPPING_CART_BACKB}
    Title Should Be     Crusader-Set - Jadberg
    Click Element       xpath:${SVG_SHOPPING_CART}
    Title Should Be     Košík - Jadberg

TC_004 : Test_ShoppingCart_Deliver
    [Documentation]     Testing Deliver Options and Payment Options, and checking if they are Enabled or not, Then Checking back button
    Click Link      xpath:${LINK_SHOPPING_CART_DELIVERB}
    Wait Until Page Contains Element   xpath:${DIV_SHOPPING_CART_CPOFDEL_2}
    Page Should Contain Link   xpath:${LINK_SHOPPING_CART_BACKTOSHOP}
    Click Element   xpath:${DIV_SHOPPING_CART_CPOFDEL_2}
    Element Should Be Enabled  xpath:${DIV_SHOPPING_CART_CPOFDEL_2}
    Click Element   xpath:${DIV_SHOPPING_CART_WOFPAY_1}
    Element Should Be Enabled   xpath:${DIV_SHOPPING_CART_WOFPAY_1}
    Click Element   xpath:${DIV_SHOPPING_CART_CPOFDEL_3}
    Element Should Be Enabled   xpath:${DIV_SHOPPING_CART_CPOFDEL_3}
    Click Element   xpath:${DIV_SHOPPING_CART_CPOFDEL_1}
    Element Should Be Enabled   xpath:${DIV_SHOPPING_CART_CPOFDEL_1}
    Capture Page Screenshot
    Click Link      xpath:${LINK_SHOPPING_CART_BACKTOSHOP}
    Page Should Contain Element     xpath:${LINK_SHOPPING_CART_BACKB}

TC_005 : Test_ShoppingCart_Removing_Product
    [Documentation]
    Wait Until Page Contains Element    xpath:${LINK_SHOPPING_CART_REMOVE}
    Click Link  xpath:${LINK_SHOPPING_CART_REMOVE}
    Page Should Not Contain Link    xpath:${LINK_TO_PRODUCT}
    Capture Page Screenshot
    [Teardown]  Close Browser