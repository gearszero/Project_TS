*** Settings ***
Documentation  Tests set of mainpage. Clicking on slideshows and other stuff
Resource  ../data/resources.robot

*** Variables ***


*** Test Cases ***
TC_001 : Test_Jadberg_Opening_Website
    Open_Browser_and_url
    Set Screenshot Directory    ../SCREENSHOTS/SCREENSHOTS - Main Page
    Set Selenium Speed  0.1 seconds
    Capture Page Screenshot

# Slide Show
TC_002 : Test_MainPage_SlideShow
    [Documentation]  Testing upper slide show. Testing 2 buttons, then testing if link is working
    Click Button                    xpath:${BUTTON_TOP_SLIDESHOW_1}
    Click Button                    xpath:${BUTTON_TOP_SLIDESHOW_5}
    Capture Page Screenshot
    Click_Link_Title_Should_Be      ${LINK_TOP_SLIDESHOW_INF}   ${KRATKE_LEGINY_SEARCH_RES}
    Capture Page Screenshot
    Click_Logo

# Accepting Cookies
TC_003 : Test_Accept_Cookies
    [Documentation]     Accepting cookies and testing if value is visible
    Click_OK_cookie

# Test Action
TC_004 : Test_MainPage_Action_Pictures
    [Documentation]  Testing action section and one link, checking if title matches the action
    Click_Link_Title_Should_Be      ${LINK_ACTION_CARDIGANS}    ${TITLE_CARDIGANS}
    Capture Page Screenshot
    Click_Logo

# Testing Bottom Slide Show
TC_005 : Test_MainPage_Bottom_SlideShow
    [Documentation]  Testing bottom slideshow, checking if title is right
    Click Button                xpath:${BUTTON_BOT_SLIDESHOW_1}
    Click Button                xpath:${BUTTON_BOT_SLIDESHOW_3}
    Click_Link_Title_Should_Be  ${LINK_BOT_READ_MORE}   ${LEGIN_TITLE}
    Capture Page Screenshot
    Click_Logo

# Testing Bottom Block Section
TC_006 : Test_MainPage_Bottom_Block
    [Documentation]  Testing bottom green block section. Testing links and checking their title
    Click_Link_Title_Should_Be  ${LINK_JDB_LAB}     ${LAB_TITLE}
    Capture Page Screenshot
    Click_Logo
    Click_Link_Title_Should_Be  ${LINK_JDB_BLOG}    ${BLOG_TITLE}
    Capture Page Screenshot
    Click_Logo

# Testing Bottom Links
TC_007 : Test_MainPage_Bottom_Links
    [Documentation]  Testing bottom links.
    Click_Link_Title_Should_Be  ${LINK_HEADER_BOT}      ${TITLE_ALL_ABOUT}
    Capture Page Screenshot
    Click_Logo
    Click_Link_Title_Should_Be  ${LINK_BOT_CONDITIONS}  ${TITLE_CONDITIONS}
    Capture Page Screenshot
    Click_Logo
    Click_Link_Title_Should_Be  ${LINK_BOT_CONTACTS}    ${TITLE_ALL_ABOUT}
    Capture Page Screenshot
    Click_Logo
    [Teardown]  Close Browser

