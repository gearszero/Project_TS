*** Settings ***
Documentation  Testing Forgotten password form
Resource  ../data/resources.robot


*** Variables ***


*** Test Cases ***
TC_001 : Test_Forgotten_Password_Nav
    [Documentation]  Clicking on forgotten password form, checking if title matches, then coming back
    Set Selenium Speed  0.01 seconds
    Set Screenshot Directory    ../SCREENSHOTS/SCREENSHOTS - Forgotten Password
    Open_Browser_and_url
    Click Link   xpath:${LINK_LOGIN_LOGO}
    Click_Link_Title_Should_Be  ${LINK_FORGOTTEN_PASSWORD}  Zaslat ztracené heslo - Jadberg
    Capture Page Screenshot
    Click_Logo

TC_002 : Test_Forgotten_Password_Send_Empty
    [Documentation]  Clicking on forgotten password and giving it an epmty input
    Click Link   xpath:${LINK_LOGIN_LOGO}
    Click_Link_Title_Should_Be  ${LINK_FORGOTTEN_PASSWORD}  Zaslat ztracené heslo - Jadberg
    Input Text  xpath:${INPUT_FORGOTTEN_PASSWORD}  \
    Capture Page Screenshot
    Click Element   xpath:${INPUT_FORGOTTEN_BUTTON_SEND}
    Alert Should Be Present     Musíte zadat svůj e-mail ve správném tvaru.
    Click_Logo


TC_003 : Test_Forgotten_Password_Send_Invalid
    [Documentation]  Clicking on forgotten password and giving it input of not registered email, IDK why Alert Should Be Present is just popping out errors
    Click Link   xpath:${LINK_LOGIN_LOGO}
    Click_Link_Title_Should_Be  ${LINK_FORGOTTEN_PASSWORD}  Zaslat ztracené heslo - Jadberg
    Input Text  xpath:${INPUT_FORGOTTEN_PASSWORD}  ${RANDOM_EMAIL_CORRECT}
    Capture Page Screenshot
    Click Element   xpath:${INPUT_FORGOTTEN_BUTTON_SEND}
    Element Should Contain  xpath:${PARAGRAPH_ERROR_MSG}     Účet se zadaným e-mailem neexistuje.
    Capture Page Screenshot
    Click Element   xpath:${INPUT_FORGOTTEN_BUTTON_SEND}
    Input Text  xpath:${INPUT_FORGOTTEN_PASSWORD}  ${RANDOM_EMAIL_INCORRECT}
    Capture Page Screenshot
    Click Element   xpath:${INPUT_FORGOTTEN_BUTTON_SEND}
    Alert Should Be Present     Musíte zadat svůj e-mail ve správném tvaru.
    Click_Logo
    [Teardown]  Close Browser