*** Settings ***
Documentation  Testing Login, mostly invalid logins
Resource  ../data/resources.robot


*** Variables ***


*** Test Cases ***

TC_001 : Test_Login_Empty
    [Documentation]  Clicking login button and trying empty input, checking alert
    Set Screenshot Directory    ../SCREENSHOTS/SCREENSHOTS - Login
    Open_Browser_and_url
    Click Link                  xpath:${LINK_LOGIN_LOGO}
    Capture Page Screenshot
    Login_Input
    Alert Should Be Present     Přihlašovací e-mail je nutné vyplnit.
    Click Link                  xpath:${LINK_LOGIN_LOGO}

# Invalid Login
TC_002 : Test_Login_Invalid
    [Documentation]     Invalid login info
    Click Link                xpath:${LINK_LOGIN_LOGO}
    Login_Input               ${LOGIN_INPUT_EMAIL_1}  ${LOGIN_INPUT_PASSWORD}
    Wait Until Element Is Visible   xpath:${P_ELEMENT_LOGIN}
    Element Should Contain    xpath:${P_ELEMENT_LOGIN}    ${INCORRECT_USERNAME_MSG}
    Login_Input               ${LOGIN_INPUT_EMAIL_2}     ${LOGIN_INPUT_PASSWORD}
    Wait Until Element Is Visible   xpath:${P_ELEMENT_LOGIN}
    Capture Page Screenshot
    Element Should Contain    xpath:${P_ELEMENT_LOGIN}     ${INCORRECT_USERNAME_MSG}
    Login_Input               ${LOGIN_INPUT_EMAIL_3}   ${LOGIN_INPUT_PASSWORD}
    Wait Until Element Is Visible   xpath:${P_ELEMENT_LOGIN}
    Element Should Contain    xpath:${P_ELEMENT_LOGIN}    ${INCORRECT_USERNAME_MSG}
    [Teardown]  Close Browser


