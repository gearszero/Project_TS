*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}                      Chrome
${URL}                          https://www.jadberg.eu/
${RANDOM_EMAIL_CORRECT}         trombolo@rundanahonzu.pt
${RANDOM_EMAIL_INCORRECT}       BadEmailStyle.cp
${RANDOM_PASSWORD}              heslo123
${SVG_LOGO}                     //a[@id='logo']//*[name()='svg']

# ------------------------------------------- #
# ! MAIN PAGE VARIABLES !
${COOKIE_OK}        /html/body/div[3]/div/div/a[2]
${DIV_COOKIE}       /html/body/div[3]/div

# TOP SLIDESHOW
${BUTTON_TOP_SLIDESHOW_1}       /html/body/div[7]/div[3]/div/ul/li[1]/button
${BUTTON_TOP_SLIDESHOW_5}       /html/body/div[7]/div[3]/div/ul/li[5]/button
${LINK_TOP_SLIDESHOW_INF}       /html/body/div[7]/div[3]/div/div/div/div[5]/div/a
${KRATKE_LEGINY_SEARCH_RES}     Výsledky vyhledávání pro KRÁTKÉ LEGÍNY - Jadberg

# ACTION LINKS
${LINK_ACTION_CARDIGANS}        /html/body/div[7]/div[5]/div[1]/div/div[1]/a
${TITLE_CARDIGANS}  Kabáty a kardigany - Jadberg

# BOTTOM SLIDESHOW
${BUTTON_BOT_SLIDESHOW_1}       /html/body/div[7]/div[5]/div[2]/div[3]/div[1]/ul/li[1]/button
${BUTTON_BOT_SLIDESHOW_3}       /html/body/div[7]/div[5]/div[2]/div[3]/div[1]/ul/li[3]/button
${LINK_BOT_READ_MORE}           /html/body/div[7]/div[5]/div[2]/div[3]/div[1]/div/div/div[4]/div[2]/a
${LEGIN_TITLE}  Legíny Jadberg - Jadberg

# BOTTOM BLOCK SECTION
${LINK_JDB_LAB}         /html/body/div[9]/div/div[1]/div[1]/a
${LAB_TITLE}            Jadberg LAB - Jadberg
${LINK_JDB_BLOG}        /html/body/div[9]/div/div[1]/div[2]/a
${BLOG_TITLE}           Jadberg bloguje - Jadberg

# BOTTOM LINKS
${LINK_HEADER_BOT}          /html/body/div[9]/div/div[3]/div[1]/div/div[3]/h3/a
${LINK_BOT_CONDITIONS}      /html/body/div[9]/div/div[3]/div[1]/div/div[4]/ul/li[2]/a
${LINK_BOT_CONTACTS}        /html/body/div[9]/div/div[3]/div[1]/div/div[3]/ul/li[7]/a
${TITLE_ALL_ABOUT}          Vše o nákupu - Jadberg
${TITLE_CONDITIONS}         Podmínky spolupráce - Jadberg



# ------------------------------------------- #
# ! SEARCH VARIABLES !
# SEARCH
${SVG_SEARCH}       //div[@class='mobile-search']//*[name()='svg']
${INPUT_SEARCH}     /html/body/div[5]/form/div[1]/input[1]

# INPUTS
${SEARCH_VAR_1}     Rukavice
${SEARCH_VAR_2}     Trička
${SEARCH_VAR_3}     Funkční Prádlo
${SEARCH_VAR_4}     Random

# TITLES
${SEARCH_RESULTS_TOPTITLE}      VÝSLEDKY VYHLEDÁVÁNÍ


# ------------------------------------------- #
# ! NAV BAR VARIABLES !
${LINK_NAVBAR_FREE_TIME}        /html/body/div[4]/div[1]/div/nav/div[1]/div[4]/strong/h4/a
${LINK_NAVBAR_VOLEYBALL}        /html/body/div[4]/div[1]/div/nav/div[1]/div[5]/strong/h4/a
${LINK_NAVBAR_BASKETBALL}       /html/body/div[4]/div[1]/div/nav/div[1]/div[1]/strong/h4/a
${LINK_NAVBAR_FLOORBALL}        /html/body/div[4]/div[1]/div/nav/div[1]/div[2]/strong/h4/a
${LINK_NAVBAR_FOOTBALL}         /html/body/div[4]/div[1]/div/nav/div[1]/div[3]/strong/h4/a
${LINK_NAVBAR_OTHER_CAT}        /html/body/div[4]/div[1]/div/nav/div[2]/strong

# DROP DOWN BARS
${DROPD_NAVBAR_FOOTBALL}        //body[1]/div[4]/div[1]/div[1]/nav[1]/div[1]/div[3]/div[1]/ul[1]
${DROPD_NAVBAR_VOLEYBALL}       //body[1]/div[4]/div[1]/div[1]/nav[1]/div[1]/div[3]/div[1]/ul[1]
${DROPD_NAVBAR_OTHER}           /html/body/div[4]/div[1]/div/nav/div[2]/div/div/div[10]/h4/a

# TITLES
${TITLE_NAVBAR_FREE_TIME}   Trénink a volný čas - Jadberg
${TITLE_NAVBAR_VOLEYBALL}   Volejbal - Jadberg
${TITLE_NAVBAR_BASKETBALL}  Basketbal - Jadberg
${TITLE_NAVBAR_FLORBALL}    Florbal - Jadberg
${TITLE_NAVBAR_FOTBALL}     Fotbal - Jadberg

${TITLE_NAVBAR_MAINPAGE}

# PAGE CONTAINS
${NAVBAR_FOOTBALL_HIGH_SOCKS}   //li[1]//div[1]//a[1]//div[1]//div[6]//img[1]
${NAVBAR_VOLEYBALL_SHORTS}      //li[1]//div[1]//a[1]//div[1]//div[6]//img[1]
${NAVBAR_HANDBALL_SHORTS}       //body[1]/div[7]/div[3]/div[1]/div[1]/div[2]/ul[1]/li[2]/div[1]/a[1]/div[1]/div[8]/img[1]

# PAGES TITLES
${NAVBAR_HIGH_SOCKS_TITLE}      Štulpny a ponožky - Jadberg
${NAVBAR_SHORTS_TITLE}          Volejbalové trenýrky - Jadberg
${NAVBAR_HANDBALL_TITLE}        Házená - Jadberg

# INSIDE NAVBAR
${LINK_IN_NAVBAR_HSOCKS}        /html/body/div[4]/div[1]/div/nav/div[1]/div[3]/div/ul/li[3]/a
${LINK_IN_NAVBAR_VOLSHORTS}     /html/body/div[4]/div[1]/div/nav/div[1]/div[5]/div/ul/li[2]/a
${LINK_IN_NAVBAR_HANDBALL}      /html/body/div[4]/div[1]/div/nav/div[2]/div/div/div[10]/h4/a


# ------------------------------------------- #
# ! LOGIN VARIABLES !
${LINK_LOGIN_LOGO}          /html/body/div[4]/div[2]/div[3]/ul/li/a
${LOGIN_INPUT_PASSWORD}     ${RANDOM_PASSWORD}
${LOGIN_INPUT_EMAIL_1}      honza.novak@seznam.cz
${LOGIN_INPUT_EMAIL_2}      petr.svoboda@gamil.com
${LOGIN_INPUT_EMAIL_3}      ${RANDOM_EMAIL_CORRECT}

${P_ELEMENT_LOGIN}          /html/body/div[4]/div[2]/div[3]/div/div/p
${INCORRECT_USERNAME_MSG}    Incorrect username.

${INPUT_LOGIN_EMAIL}        /html/body/div[4]/div[2]/div[3]/div/div/form/table/tbody/tr[1]/td/input
${INPUT_LOGIN_PASSWORD}     /html/body/div[4]/div[2]/div[3]/div/div/form/table/tbody/tr[2]/td/input
${INPUT_LOGIN_LOGINBUT}     /html/body/div[4]/div[2]/div[3]/div/div/form/table/tbody/tr[3]/td/input


# ------------------------------------------- #
# ! FORGOTTEN PASSWORD VARIABLES !
${LINK_FORGOTTEN_PASSWORD}      /html/body/div[4]/div[2]/div[3]/div/div/ul/li[2]/a
${INPUT_FORGOTTEN_PASSWORD}     /html/body/div[7]/div[2]/div/div/form/table/tbody/tr[1]/td/input
${INPUT_FORGOTTEN_BUTTON_SEND}  /html/body/div[7]/div[2]/div/div/form/table/tbody/tr[2]/td/input

${PARAGRAPH_ERROR_MSG}          /html/body/div[7]/div[2]/div/p[1]


# ------------------------------------------- #
# ! REGISTRATION VARIABLES !
${LINK_REGISTRATION}            /html/body/div[4]/div[2]/div[3]/div/div/ul/li[1]/a
${INPUT_REGISTER_BUTTON}        /html/body/div[7]/div[2]/div/form/fieldset[5]/table/tbody/tr[3]/td/input

# INPUT SECTIONS
${INPUT_REGISTRATION_NAME}          /html/body/div[7]/div[2]/div/form/fieldset[1]/table/tbody/tr[1]/td/input
${INPUT_REGISTRATION_SNAME}         /html/body/div[7]/div[2]/div/form/fieldset[1]/table/tbody/tr[2]/td/input
${INPUT_REGISTRATION_EMAIl}         /html/body/div[7]/div[2]/div/form/fieldset[1]/table/tbody/tr[3]/td/input
${INPUT_REGISTRATION_PHONE}         /html/body/div[7]/div[2]/div/form/fieldset[1]/table/tbody/tr[4]/td/input
${INPUT_REGISTRATION_FIRM}          /html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[1]/td/input
${INPUT_REGISTRATION_ADRESS}        /html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[2]/td/input
${INPUT_REGISTRATION_CITY}          /html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[3]/td/input
${INPUT_REGISTRATION_ZIP}           /html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[4]/td/input
${INPUT_REGISTRATION_STATE}         /html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[5]/td/div/div/select
${INPUT_REGISTRATION_IC}            /html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[6]/td/input
${INPUT_REGISTRATION_DIC}           /html/body/div[7]/div[2]/div/form/fieldset[2]/table/tbody/tr[7]/td/input
${INPUT_REGISTRATION_PASSWORD}      /html/body/div[7]/div[2]/div/form/fieldset[4]/table/tbody/tr[1]/td/input
${INPUT_REGISTRATION_PASSWORD_VE}   /html/body/div[7]/div[2]/div/form/fieldset[4]/table/tbody/tr[2]/td/input

# ALERTS MESSEGES
# BLANK
${REGISTRATION_BLANK_NAME}          Musíte vyplnit jméno.
${REGISTRATION_BLANK_SNAME}         Musíte vyplnit příjmení.
${REGISTRATION_BLANK_EMAIL}         E-mail musíte vyplnit.
${REGISTRATION_BLANK_PHONE}         Telefon musíte vyplnit.
${REGISTRATION_BLANK_STREET}        Ulice musí být vyplněna.
${REGISTRATION_BLANK_CITY}          Město musí být vyplněno.
${REGISTRATION_BLANK_ZIP}           PSČ musí být vyplněno.

# INCORRECT FORMAT
${REGISTRATION_INCORRECT_EMAIL}     E-mail nemá požadovaný tvar.
${REGISTRATION_INCORRECT_PHONE}     Telefon musí být dlouhý minimálně 9 znaků
${REGISTRATION_INCORRECT_ZIP}       PSČ musí odpovídat místnímu standardu.
${REGISTRATION_INCORRECT_PASSWORD}  Heslo musí mít nejméné 6 znaků
${REGISTRATION_INCORRECT_IC}        IČ musí být číslo.
${REGISTRATION_INCORRECT_DIC}       DIČ musí být ve správném formátu.

# OTHER ALERT MSG
${REGISTRATION_NOTSAME_PASSWORD}    Hesla musí být shodná
${REGISTRATION_NOTCH_CHECKBOXES}    Pro vytvoření/editaci účtu je nutné souhlasit se zpracováním osobních dat

# INPUTS
${REGISTRATION_FIRST_NAME}          Petr
${REGISTRATION_SECOND_NAME}         Novotny
${REGISTRATION_INPHONE}             12#
${REGISTRATION_VPHONE}              123456789
${REGISTRATION_FIRM}                PlopBoty
${REGISTRATION_ADRESS}              Kominy 345
${REGISTRATION_CITY}                Rozhorky
${REGISTRATION_INZIP}               !""@!
${REGISTRATION_VZIP}                72161
${REGISTRATION_COUNTRY_INDEX}       1   # 0-2
${REGISTRATION_INIC}                pap
${REGISTRATION_VIC}                 123
${REGISTRATION_INDIC}               plep
${REGISTRATION_VDIC}                125
${REGISTRATION_INPASSWORD}          heslo124

# CHECKBOXES
${CHECKBOX_REGISTRATION_NEWS}       //input[@id='frmregistrationForm-gdpr_user_newsletter']
${CHECKBOX_REGISTRATION_PERDATA}    //input[@id='frmregistrationForm-gdpr_user_osobnidata']


# ------------------------------------------- #
# ! SHOPPING CART !
${SVG_SHOPPING_CART}                //a[@id='top-cart-btn']//*[name()='svg']
${LINK_SHOPPING_CART_BACKB}         /html/body/div[7]/div[2]/div/div[2]/div[3]/a[2]
${LINK_SHOPPING_CART_DELIVERB}      /html/body/div[7]/div[2]/div/div[2]/div[3]/a[1]
${LINK_SHOPPING_CART_BACKTOSHOP}    /html/body/div[7]/div[2]/div[2]/div[12]/a
${LINK_SHOPPING_CART_REMOVE}        /html/body/div[7]/div[2]/div/div[1]/form/table/tbody/tr[2]/td[6]/a
${LINK_TO_PRODUCT}                  /html/body/div[7]/div[2]/div/div[1]/form/table/tbody/tr[2]/td[1]/div/div[2]/a

# COMPANY THAT WILL DELIVER
${DIV_SHOPPING_CART_CPOFDEL_1}     /html/body/div[7]/div[2]/div[2]/form/div[1]/div[1]/div[1]
${DIV_SHOPPING_CART_CPOFDEL_2}     /html/body/div[7]/div[2]/div[2]/form/div[1]/div[1]/div[2]
${DIV_SHOPPING_CART_CPOFDEL_3}     /html/body/div[7]/div[2]/div[2]/form/div[1]/div[1]/div[3]

# WAY OF PAYMENT
${DIV_SHOPPING_CART_WOFPAY_1}      /html/body/div[7]/div[2]/div[2]/form/div[1]/div[2]/div[1]


# ------------------------------------------- #
# ! ADDING PRODUCT !
${LINK_FIRST_PRODUCT}       /html/body/div[7]/div[3]/div[1]/div/div[2]/ul/li[1]/div/a
${IMG_CHOOSING_DESIGN}      /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[2]/div/div[4]/img
${BUTTON_REMOVE_SIZE}       /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div[2]/button
${BUTTON_ADD_PRODUCT}       /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[6]/div[2]/button

# ADD SIZE
${SELECT_CHOOSE_SEX}        //*[@id="detail"]/div[2]/div[3]/div[3]/div/div/div/select
${SELECT_CHOOSE_SIZE}       /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div[1]/div/div[1]/div/select
${SELECT_CHOOSE_2_SIZE}     //div[@class='detail-variant-box__size']//select[@class='js-variant-box-sizes']
${INPUT_AMOUNT}             /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div/div/div[2]/input
${INPUT_2_AMOUNT}           //div[@class='detail-variant-box__size']//input[@value='1']
${BUTTON_ADD_MORE_SIZES}    /html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div/button
${INPUT_AMOUNT_NUMBER}      4
${INPUT_AMOUNT_NUMBER2}     3
${BUTTON_CLICK_PLUS}        4
${BUTTON_CLICK_PLIS}        2

# INDEXES
${INDEX_SEX_SELECT}        1
${INDEX_SIZE_SELECT}       3
${INDEX_SIZE_SELECT2}      5

# PRODUCT
${CHOSEN_PRODUCT}       //div[@class='in-product-img hidden-print']

${LINK_WAITING_FOR_POPUP}   /html/body/div[2]/div/div[6]/a[1]

*** Keywords ***
Open_Browser_and_url
    [Documentation]  Openin browser, maximizing window and checking if title is correct
    Open Browser        ${url}     ${browser}
    Maximize Browser Window
    Title Should Be     Sportovní oblečení a dresy - Jadberg

Click_Logo
    Click Element       xpath:${SVG_LOGO}
    Title Should Be     Sportovní oblečení a dresy - Jadberg

Click_Link_Title_Should_Be
    [Arguments]  ${navigation_path}     ${title}
    Click Link          xpath:${navigation_path}
    Title Should Be     ${title}

Hover_Then_Click
    [Arguments]  ${navigation_path_hover}   ${navigation_path_click}   ${contain_element}   ${html_title}
    Mouse Over                          xpath:${navigation_path_hover}
    Wait Until Element Is Visible       xpath:${navigation_path_click}
    Click Link                          xpath:${navigation_path_click}
    Page Should Contain Element         ${contain_element}
    Title Should Be                     ${html_title}

Search_With_Enter
    [Arguments]  ${search}
    Click Element                   xpath:${SVG_SEARCH}
    Input Text                      xpath:${INPUT_SEARCH}      ${search}
    Press Keys                      none    ENTER
    Title Should Be                 Výsledky vyhledávání pro ${search} - Jadberg

# SHOPPING
Click_Plus_Button
    Click Button    xpath:/html/body/div[7]/div[2]/div[1]/div[2]/div[3]/div[4]/div/div/div[2]/div/button[1]

Add_Size
    [Arguments]     ${arg_path_list_sex}    ${arg_path_list_size}   ${arg_path_input}   ${arg_sex}=default 1    ${arg_size}=default 1    ${arg_input_count}=default 1    ${arg_click_plus}=default 1
    # Selecting sex
    Select From List by Index   xpath:${arg_path_list_sex}     ${arg_sex}
    # Selectiong size
    Select From List by Index   xpath:${arg_path_list_size}      ${arg_size}
    # Putting amount
    Input Text  xpath:${arg_path_input}     ${arg_input_count}
    Textfield Should Contain      xpath:${arg_path_input}     ${arg_input_count}
    # Clicking add button
    Repeat Keyword  ${arg_click_plus} times     Click_Plus_Button


Registration_Input_Form
    [Arguments]     ${first_name}=\     ${second_name}=\     ${email}=\     ${phone_number}=\   ${firm}=\    ${adress}=\    ${city}=\    ${zip}=\   ${state}=0      ${ic}=\     ${dic}=\    ${password}=\    ${password_verify}=\

    Input Text  xpath:${INPUT_REGISTRATION_NAME}    ${first_name}
    Input Text  xpath:${INPUT_REGISTRATION_SNAME}   ${second_name}
    Input Text  xpath:${INPUT_REGISTRATION_EMAIl}   ${email}
    Input Text  xpath:${INPUT_REGISTRATION_PHONE}   ${phone_number}
    Input Text  xpath:${INPUT_REGISTRATION_FIRM}    ${firm}
    Input Text  xpath:${INPUT_REGISTRATION_ADRESS}  ${adress}
    Input Text  xpath:${INPUT_REGISTRATION_CITY}  ${city}
    Input Text  xpath:${INPUT_REGISTRATION_ZIP}   ${zip}
    Select From List by Index   xpath:${INPUT_REGISTRATION_STATE}     ${state}
    Input Text  xpath:${INPUT_REGISTRATION_IC}  ${ic}
    Input Text  xpath:${INPUT_REGISTRATION_DIC}  ${dic}
    Input Text  xpath:${INPUT_REGISTRATION_PASSWORD}  ${password}
    Input Text  xpath:${INPUT_REGISTRATION_PASSWORD_VE}  ${password_verify}

    Scroll Element Into View    xpath:${INPUT_REGISTER_BUTTON}
    Click Element   xpath:${INPUT_REGISTER_BUTTON}

Registration_CheckBoxes
    # Send News
    Select Checkbox     xpath:${CHECKBOX_REGISTRATION_NEWS}
    # Accept
    Select Checkbox     xpath:${CHECKBOX_REGISTRATION_PERDATA}

Login_Input
    [Arguments]  ${email}=\  ${password}=\
    # Inputing Email and Password
    Input Text  xpath:${INPUT_LOGIN_EMAIL}   ${email}
    Input Text  xpath:${INPUT_LOGIN_PASSWORD}   ${password}
    # Clicking Loggin Button
    Click Element   xpath:${INPUT_LOGIN_LOGINBUT}

Click_OK_cookie
    Wait Until Element Is Enabled       xpath:${COOKIE_OK}
    Wait Until Element Is Visible       xpath:${COOKIE_OK}
    Click Link                          xpath:${COOKIE_OK}