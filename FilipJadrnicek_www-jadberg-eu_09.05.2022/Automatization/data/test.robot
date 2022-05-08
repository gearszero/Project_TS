*** Settings ***
Library  SeleniumLibrary
Resource  ../data/resources.robot

*** Test Cases ***
Test_Jadberg_Opening_Website
    Open Browser    ${url}     ${browser}
    Maximize Browser Window

# Accepting Cookies
Test_Accept_Cookies
    sleep   3
    Click Link  xpath:${COOKIE_OK}

# TESTING MAIN PAGE
# Slide Show
# TODO: BUTTONS ARE NOT WORKING, FIX IT CUNT

Test_MainPage_SlideShow
    Click Button    xpath:${BUTTON_TOP_SLIDESHOW_1}
    Click Button    xpath:${BUTTON_TOP_SLIDESHOW_5}
    Click_Link_Title_Should_Be  ${LINK_TOP_SLIDESHOW_INF}   ${KRATKE_LEGINY_SEARCH_RES}
    Click_Logo

# Test Action
Test_MainPage_Action_Pictures
    Click_Link_Title_Should_Be  /html/body/div[7]/div[5]/div[1]/div/div[1]/a    Kabáty a kardigany - Jadberg
    Click_Logo

# Testing Bottom Slide Show
Test_MainPage_Bottom_slideShow
    Click Button    xpath:${BUTTON_BOT_SLIDESHOW_1}
    Click Button    xpath:${BUTTON_BOT_SLIDESHOW_3}
    Click_Link_Title_Should_Be  ${LINK_BOT_READ_MORE}   Legíny Jadberg - Jadberg
    Click_Logo

# Testing Bottom Block Section
Test_MainPage_Bottom_Block
    Click_Link_Title_Should_Be  ${LINK_JDB_LAB}  Jadberg LAB - Jadberg
    Click_Logo
    Click_Link_Title_Should_Be  ${LINK_JDB_BLOG}   Jadberg bloguje - Jadberg
    Click_Logo

# Testing Bottom Links
Test_MainPage_Bottom_Links
    Click_Link_Title_Should_Be  ${LINK_HEADER_BOT}    Vše o nákupu - Jadberg
    Click_Logo
    Click_Link_Title_Should_Be  ${LINK_BOT_CONDITIONS}   Podmínky spolupráce - Jadberg
    Click_Logo
    Click_Link_Title_Should_Be  ${LINK_BOT_CONTACTS}   Vše o nákupu - Jadberg
    Click_Logo

Test_Searching
    Search_With_Enter   ${SEARCH_VAR_1}
    Search_With_Enter   ${SEARCH_VAR_2}
    Search_With_Enter   ${SEARCH_VAR_2}
    Search_With_Enter   ${SEARCH_VAR_4}

Test_Navigation
    # Clicking on navigation bar trenink-volny-cas
    Click_Navigation  ${LINK_NAVBAR_FREE_TIME}
    # Volejbal
    Click_Navigation  ${LINK_NAVBAR_VOLEYBALL}
    # Basketbal
    Click_Navigation  ${LINK_NAVBAR_BASKETBALL}
    # Florbal
    Click_Navigation  ${LINK_NAVBAR_FLOORBALL}
    # Fotbal
    Click_Navigation  ${LINK_NAVBAR_FOOTBALL}

Test_Clicking_Logo_To_Main_Page
    Click_Logo
    Title Should Be     Sportovní oblečení a dresy - Jadberg

Test_Hover_Choose_Click
    # Hovering Fotbal, choosing high socks
    Hover_Then_Click  ${LINK_NAVBAR_FOOTBALL}    ${LINK_IN_NAVBAR_HSOCKS}
    Hover_Then_Click  ${LINK_NAVBAR_VOLEYBALL}    ${LINK_IN_NAVBAR_VOLSHORTS}
    Hover_Then_Click  ${LINK_NAVBAR_OTHER_CAT}    ${LINK_IN_NAVBAR_HANDBALL}

# TODO: Zmen to at se to da pouzit vickrat
Test_Searching_Produt_Simple_adding_Cart
    Search_Choosing_Product
    Wait Until Element Is Visible   xpath:/html/body/div[2]/div/div[6]/a[1]
    Click Link  xpath:/html/body/div[2]/div/div[6]/a[1]

# TESTING LOGIN
# Testing login empty
Test_Login_Empty
    # Clicking login logo
    Click Link   xpath:${LINK_LOGIN_LOGO}
    Login_Input
    Alert Should Be Present     Přihlašovací e-mail je nutné vyplnit.
    Click Link   xpath:${LINK_LOGIN_LOGO}

# Invalid Login
Test_Login_Invalid
    Click Link   xpath:${LINK_LOGIN_LOGO}
    Login_Input  ${LOGIN_INPUT_EMAIL_1}  ${LOGIN_INPUT_PASSWORD}
    Sleep   1
    Element Should Contain    xpath:${P_ELEMENT_LOGIN}    ${INCORRECT_USERNAME_MSG}
    Login_Input  petr.svoboda@gamil.com     ${LOGIN_INPUT_PASSWORD}
    Element Should Contain    xpath:${P_ELEMENT_LOGIN}     ${INCORRECT_USERNAME_MSG}
    Login_Input  trombolo@rundanahonzu.pt   ${LOGIN_INPUT_PASSWORD}
    Element Should Contain    xpath:${P_ELEMENT_LOGIN}    ${INCORRECT_USERNAME_MSG}

# TODO: Login Valid
# TODO: Login only with email, login only with password

# TESTING FORGOTTEN PASSWORD
# Forgotten Password Navigation
Test_Forgotten_Password_Nav
    Click_Link_Title_Should_Be  ${LINK_FORGOTTEN_PASSWORD}  Zaslat ztracené heslo - Jadberg
    Click_Logo

# Forgottten Passwrod Send Empty
Test_Forgotten_Password_Send_Empty
    Click Link   xpath:${LINK_LOGIN_LOGO}
    Click_Link_Title_Should_Be  ${LINK_FORGOTTEN_PASSWORD}  Zaslat ztracené heslo - Jadberg
    Input Text  xpath:${INPUT_FORGOTTEN_PASSWORD}  \
    Click Element   xpath:${INPUT_FORGOTTEN_BUTTON_SEND}
    Alert Should Be Present     Musíte zadat svůj e-mail ve správném tvaru.
    Click_Logo

# Forgotten Password Send Invalid
Test_Forgotten_Password_Send_Invalid
    Click Link   xpath:${LINK_LOGIN_LOGO}
    Click_Link_Title_Should_Be  ${LINK_FORGOTTEN_PASSWORD}  Zaslat ztracené heslo - Jadberg
    Input Text  xpath:${INPUT_FORGOTTEN_PASSWORD}  ${RANDOM_EMAIL_CORRECT}
    Click Element   xpath:${INPUT_FORGOTTEN_BUTTON_SEND}
    Element Should Contain  xpath:${PARAGRAPH_ERROR_MSG}     Účet se zadaným e-mailem neexistuje.
    # Click Element   xpath:/html/body/div[7]/div[2]/div/div/form/table/tbody/tr[2]/td/input
    Input Text  xpath:${INPUT_FORGOTTEN_PASSWORD}  ${RANDOM_EMAIL_INCORRECT}
    Click Element   xpath:${INPUT_FORGOTTEN_BUTTON_SEND}
    Alert Should Be Present     Musíte zadat svůj e-mail ve správném tvaru.
    Click_Logo

# TODO: Forgotten Password Send VALID

# TESTING REGISTRATION
# Moving to registration form
Test_Registration_Form
    sleep   1
    Click Link   xpath:${LINK_LOGIN_LOGO}
    Click_Link_Title_Should_Be   ${LINK_REGISTRATION}   Registrace nového uživatele - Jadberg

Test_Registration_Form_Empty
    Click Element   xpath:${INPUT_REGISTER_BUTTON}
    Alert Should Be Present     ${REGISTRATION_BLANK_NAME}

Test_Registration_Form_Name
    Registration_Input_Form     ${REGISTRATION_FIRST_NAME}
    Alert Should Be Present     ${REGISTRATION_BLANK_SNAME}

Test_Registration_Form_SName
    Registration_Input_form     ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}
    Alert Should Be Present     ${REGISTRATION_BLANK_EMAIL}

Test_Registration_Form_Email_Invalid_Format
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_INCORRECT}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_EMAIL}

Test_Registration_Form_Email_Valid_Format
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}
    Alert Should Be Present    ${REGISTRATION_BLANK_PHONE}

Test_Registration_Form_PhoneNumber_Invalid_Format
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_INPHONE}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_PHONE}

Test_Registration_Form_PhoneNumber_Valid_Format
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}
    Alert Should Be Present    ${REGISTRATION_BLANK_STREET}

Test_Registration_Form_Firm
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}
    Alert Should Be Present    ${REGISTRATION_BLANK_STREET}

Test_Registration_Form_Adress
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}
    Alert Should Be Present    ${REGISTRATION_BLANK_CITY}

Test_Registration_Form_City
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}
    Alert Should Be Present    ${REGISTRATION_BLANK_ZIP}

Test_Registration_Form_Zip_Invalid_Form
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_INZIP}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_ZIP}

Test_Registration_Form_Zip_Valid_Form
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_PASSWORD}

Test_Registration_Form_Choose_Different_Country
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_PASSWORD}

Test_Registration_Form_Ic_Invalid
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_INIC}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_IC}

Test_Registration_Form_Dic_Invalid
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_VIC}     ${REGISTRATION_INDIC}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_DIC}

Test_Registration_Form_Confirm_Password_Is_Not_Same
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_VIC}     ${REGISTRATION_VDIC}    ${RANDOM_PASSWORD}    ${REGISTRATION_INPASSWORD}
    Alert Should Be Present    ${REGISTRATION_NOTSAME_PASSWORD}

Test_Registration_Form_Confirm_Valid_Password
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}   ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_VIC}     ${REGISTRATION_VDIC}       ${RANDOM_PASSWORD}    ${RANDOM_PASSWORD}
    Alert Should Be Present    ${REGISTRATION_NOTCH_CHECKBOXES}

Test_Registration_Form_Checkboxes
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}   ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_VIC}     ${REGISTRATION_VDIC}       ${RANDOM_PASSWORD}    ${RANDOM_PASSWORD}
    Alert Should Be Present    ${REGISTRATION_NOTCH_CHECKBOXES}
    Registration_CheckBoxes


# TESTING SHOPPING CART
# Button Test
Test_ShoppingCart_Button
    Click Element       xpath:${SVG_SHOPPING_CART}
    Title Should Be     Košík - Jadberg

# Back to shop button
Test_ShoppingCart_Back_Button
    CLick Link      xpath:${LINK_SHOPPING_CART_BACKB}
    Click Element   xpath:${SVG_SHOPPING_CART}

# Test selecting deliver Button
Test_ShoppingCart_Deliver
    Click Link      xpath:${LINK_SHOPPING_CART_DELIVERB}
    Click Element   xpath:${DIV_SHOPPING_CART_CPOFDEL_2}
    Click Element   xpath:${DIV_SHOPPING_CART_WOFPAY_1}
    Click Element   xpath:${DIV_SHOPPING_CART_CPOFDEL_3}
    Click Element   xpath:${DIV_SHOPPING_CART_CPOFDEL_1}
    Click Link      xpath:${LINK_SHOPPING_CART_BACKTOSHOP}

# Test Deleting Product
Test_ShoppingCart_Removing_Product
    Click Link  xpath:/html/body/div[7]/div[2]/div/div[1]/form/table/tbody/tr[2]/td[6]/a
    Click_Logo
    Close Browser

*** Keywords ***
# TODO: Vymen Click Element za Click_Link_Title_Should_Be a nastav
Click_Logo
    Click Element   xpath://a[@id='logo']//*[name()='svg']

Click_Navigation
    [Arguments]  ${navigation_path}
    Click Link  xpath:${navigation_path}

Hover_Then_Click
    [Arguments]  ${navigation_path_hover}   ${navigation_path_click}
    Mouse Over  xpath:${navigation_path_hover}
    Sleep   1
    Click Link     xpath:${navigation_path_click}

Search_With_Enter
    [Arguments]  ${search}
    Click Element   xpath://div[@class='mobile-search']//*[name()='svg']
    Input Text  xpath:/html/body/div[5]/form/div[1]/input[1]     ${search}
    Press Keys   none    ENTER

# Searching for product, dresy, clicking on it then choosing variant
Search_Choosing_Product
    Search_With_Enter   dresy
    # Chosen Product
    Click Link   xpath:/html/body/div[7]/div[3]/div[1]/div/div[2]/ul/li[1]/div/a
    Click Element    xpath:/html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[2]/div/div[4]/img
    Add_Size    //*[@id="detail"]/div[2]/div[3]/div[3]/div/div/div/select   /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div[1]/div/div[1]/div/select   /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div/div/div[2]/input   1   3   4   4
    # Adding next size
    Click Button    xpath:/html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div/button
    Add_Size    //*[@id="detail"]/div[2]/div[3]/div[3]/div/div/div/select   /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div[2]/div[1]/div/select   /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div[2]/div[2]/input    1   5   3   2
    Click Button    xpath:/html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div[2]/button
    Click Button    xpath:/html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[6]/div[2]/button

# Clicking Plus Button
Click_Plus_Button
    Click Button    xpath:/html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div/div/div[2]/div/button[1]

# Adding sizes
Add_Size
    [Arguments]     ${arg_path_list_sex}    ${arg_path_list_size}   ${arg_path_input}   ${arg_sex}=default 1    ${arg_size}=default 1    ${arg_input_count}=default 1    ${arg_click_plus}=default 1
    # Selecting sex
    Select From List by Index   xpath:${arg_path_list_sex}     ${arg_sex}
    # Selectiong size
    Select From List by Index   xpath:${arg_path_list_size}      ${arg_size}
    # Putting amount
    Input Text  xpath:${arg_path_input}     ${arg_input_count}
    # Clicking add button
    Repeat Keyword  ${arg_click_plus} times     Click_Plus_Button

# Inputing into login formula
Login_Input
    [Arguments]  ${email}=\  ${password}=\
    # Inputing Email and Password
    Input Text  xpath:/html/body/div[4]/div[2]/div[3]/div/div/form/table/tbody/tr[1]/td/input   ${email}
    Input Text  xpath:/html/body/div[4]/div[2]/div[3]/div/div/form/table/tbody/tr[2]/td/input   ${password}
    # Clicking Loggin Button
    Click Element   xpath:/html/body/div[4]/div[2]/div[3]/div/div/form/table/tbody/tr[3]/td/input

Click_Link_Title_Should_Be
    [Arguments]  ${path_link}   ${title}
    Click_Navigation  ${path_link}
    Title Should Be     ${title}

Registration_Input_Form
    [Arguments]     ${first_name}=\     ${second_name}=\     ${email}=\     ${phone_number}=\   ${firm}=\    ${adress}=\    ${city}=\    ${zip}=\   ${state}=0      ${ic}=\     ${dic}=\    ${password}=\    ${password_verify}=\

    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[1]/table/tbody/tr[1]/td/input  ${first_name}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[1]/table/tbody/tr[2]/td/input  ${second_name}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[1]/table/tbody/tr[3]/td/input  ${email}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[1]/table/tbody/tr[4]/td/input  ${phone_number}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[1]/td/input  ${firm}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[2]/td/input  ${adress}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[3]/td/input  ${city}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[4]/td/input  ${zip}
    Select From List by Index   xpath:/html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[5]/td/div/div/select     ${state}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[6]/td/input  ${ic}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[7]/td/input  ${dic}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[4]/table/tbody/tr[1]/td/input  ${password}
    Input Text  xpath:/html/body/div[7]/div[2]/div/form/fieldset[4]/table/tbody/tr[2]/td/input  ${password_verify}

    # Check box
    # TODO:Check box, fill form
    # Select Checkbox  xpath:/html/body/div[7]/div[2]/div/form/div/table/tbody/tr/td/input

    # Registration Button
    Click Element   xpath:/html/body/div[7]/div[2]/div/form/fieldset[5]/table/tbody/tr[3]/td/input

Registration_CheckBoxes
    # Send News
    Select Checkbox     xpath://input[@id='frmregistrationForm-gdpr_user_newsletter']
    # Accept
    Select Checkbox     xpath://input[@id='frmregistrationForm-gdpr_user_osobnidata']