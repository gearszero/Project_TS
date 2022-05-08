*** Settings ***
Documentation  Testing Forgotten password form
Resource  ../data/resources.robot


*** Variables ***


*** Test Cases ***
TC_001 : Test_Registration_Form
    [Documentation]  Opening Browser, Clicking out cookies, then moving to registration form
    Open_Browser_and_url
    Set Screenshot Directory    ../SCREENSHOTS/SCREENSHOTS - Registration
    Sleep   2
    Click_OK_cookie
    Click Link                   xpath:${LINK_LOGIN_LOGO}
    Click_Link_Title_Should_Be   ${LINK_REGISTRATION}   Registrace nového uživatele - Jadberg

TC_002 : Test_Registration_Form_Empty
    [Documentation]  Empty input
    Click Element               xpath:${INPUT_REGISTER_BUTTON}
    Alert Should Be Present     ${REGISTRATION_BLANK_NAME}
    Capture Page Screenshot

TC_003 : Test_Registration_Form_Name
    [Documentation]  Filling name
    Registration_Input_Form     ${REGISTRATION_FIRST_NAME}
    Alert Should Be Present     ${REGISTRATION_BLANK_SNAME}
    Capture Page Screenshot

TC_004 : Test_Registration_Form_SName
    [Documentation]  Filling second Name
    Registration_Input_form     ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}
    Alert Should Be Present     ${REGISTRATION_BLANK_EMAIL}
    Capture Page Screenshot

TC_005 : Test_Registration_Form_Email_Invalid_Format
    [Documentation]  Filling invalid email format
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_INCORRECT}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_EMAIL}
    Capture Page Screenshot

TC_006 : Test_Registration_Form_Email_Valid_Format
    [Documentation]  Filling Valid email
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}
    Alert Should Be Present    ${REGISTRATION_BLANK_PHONE}
    Capture Page Screenshot

TC_007 : Test_Registration_Form_PhoneNumber_Invalid_Format
    [Documentation]  Filling invalid format of phone number
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_INPHONE}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_PHONE}
    Capture Page Screenshot

TC_008 : Test_Registration_Form_PhoneNumber_Valid_Format
    [Documentation]  Filling Valid phone number
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}
    Alert Should Be Present    ${REGISTRATION_BLANK_STREET}
    Capture Page Screenshot

TC_009 : Test_Registration_Form_Firm
    [Documentation]  Filling Firm
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}
    Alert Should Be Present    ${REGISTRATION_BLANK_STREET}
    Capture Page Screenshot

TC_010 : Test_Registration_Form_Adress
    [Documentation]  Filling Adress
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}
    Alert Should Be Present    ${REGISTRATION_BLANK_CITY}
    Capture Page Screenshot

TC_011 : Test_Registration_Form_City
    [Documentation]  Filling City
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}
    Alert Should Be Present    ${REGISTRATION_BLANK_ZIP}
    Capture Page Screenshot

TC_012 : Test_Registration_Form_Zip_Invalid_Form
    [Documentation]  Filling Invalid ZIP Format
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_INZIP}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_ZIP}
    Capture Page Screenshot

TC_013 : Test_Registration_Form_Zip_Valid_Form
    [Documentation]  Filling Valid Zip Format
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_PASSWORD}
    Capture Page Screenshot

TC_014 : Test_Registration_Form_Choose_Different_Country
    [Documentation]  Choosing differenc country then preselected
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_PASSWORD}
    Capture Page Screenshot

TC_015 : Test_Registration_Form_Ic_Invalid
    [Documentation]  Filling Invalid IC
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_INIC}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_IC}
    Capture Page Screenshot

TC_016 : Test_Registration_Form_Dic_Invalid
    [Documentation]  Fillinng Invalid DIC
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_VIC}     ${REGISTRATION_INDIC}
    Alert Should Be Present    ${REGISTRATION_INCORRECT_DIC}
    Capture Page Screenshot

TC_017 : Test_Registration_Form_Confirm_Password_Is_Not_Same
    [Documentation]  Putting 2 different passwords
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}  ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_VIC}     ${REGISTRATION_VDIC}    ${RANDOM_PASSWORD}    ${REGISTRATION_INPASSWORD}
    Alert Should Be Present    ${REGISTRATION_NOTSAME_PASSWORD}
    Capture Page Screenshot

TC_018 : Test_Registration_Form_Confirm_Valid_Password
    [Documentation]  Putting 2 Same Passwords
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}   ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_VIC}     ${REGISTRATION_VDIC}       ${RANDOM_PASSWORD}    ${RANDOM_PASSWORD}
    Alert Should Be Present    ${REGISTRATION_NOTCH_CHECKBOXES}
    Capture Page Screenshot

TC_019 : Test_Registration_Form_Checkboxes
    [Documentation]  Seleecting Checkboxws
    Registration_Input_Form    ${REGISTRATION_FIRST_NAME}    ${REGISTRATION_SECOND_NAME}   ${RANDOM_EMAIL_CORRECT}   ${REGISTRATION_VPHONE}   ${REGISTRATION_FIRM}    ${REGISTRATION_ADRESS}  ${REGISTRATION_CITY}    ${REGISTRATION_VZIP}   ${REGISTRATION_COUNTRY_INDEX}   ${REGISTRATION_VIC}     ${REGISTRATION_VDIC}       ${RANDOM_PASSWORD}    ${RANDOM_PASSWORD}
    Alert Should Be Present    ${REGISTRATION_NOTCH_CHECKBOXES}
    Capture Page Screenshot
    Registration_CheckBoxes
    Checkbox Should Be Selected  ${CHECKBOX_REGISTRATION_NEWS}
    Checkbox Should Be Selected  ${CHECKBOX_REGISTRATION_PERDATA}
    Capture Page Screenshot
    [Teardown]  Close Browser

