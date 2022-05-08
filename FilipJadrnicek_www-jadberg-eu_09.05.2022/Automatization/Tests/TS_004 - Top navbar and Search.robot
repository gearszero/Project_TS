*** Settings ***
Documentation  Tests set of mainpage.
Resource       ../data/resources.robot


*** Test Cases ***
TC_001 : Test_Navigation
    [Documentation]  Clicking navigation bar and checking if title matches or not
    Open_Browser_and_url
    Set Screenshot Directory    ../SCREENSHOTS/SCREENSHOTS - Top Navbar
    # Clicking on navigation bar trenink-volny-cas
    Click_Link_Title_Should_Be  ${LINK_NAVBAR_FREE_TIME}    ${TITLE_NAVBAR_FREE_TIME}
    Capture Page Screenshot
    # Volejbal
    Click_Link_Title_Should_Be  ${LINK_NAVBAR_VOLEYBALL}    ${TITLE_NAVBAR_VOLEYBALL}
    Capture Page Screenshot
    # Basketbal
    Click_Link_Title_Should_Be  ${LINK_NAVBAR_BASKETBALL}   ${TITLE_NAVBAR_BASKETBALL}
    Capture Page Screenshot
    # Florbal
    Click_Link_Title_Should_Be  ${LINK_NAVBAR_FLOORBALL}    ${TITLE_NAVBAR_FLORBALL}
    Capture Page Screenshot
    # Fotbal
    Click_Link_Title_Should_Be  ${LINK_NAVBAR_FOOTBALL}     ${TITLE_NAVBAR_FOTBALL}
    Capture Page Screenshot

TC_002 : Test_Clicking_Logo_To_Main_Page
    [Documentation]  Clicking on logo of the webpage, then checking if title matches
    Click_Logo
    Capture Page Screenshot

TC_003 : Test_Hover_Choose_Click
    [Documentation]  Hovering over navbar and clicking on sections
    Hover_Then_Click  ${LINK_NAVBAR_FOOTBALL}     ${LINK_IN_NAVBAR_HSOCKS}        ${NAVBAR_FOOTBALL_HIGH_SOCKS}   ${NAVBAR_HIGH_SOCKS_TITLE}
    Capture Page Screenshot
    Hover_Then_Click  ${LINK_NAVBAR_VOLEYBALL}    ${LINK_IN_NAVBAR_VOLSHORTS}     ${NAVBAR_VOLEYBALL_SHORTS}      ${NAVBAR_SHORTS_TITLE}
    Capture Page Screenshot

TC_004 : Test_search
    [Documentation]  Using search and checking if page contains some elements and text
    Search_With_Enter   ${SEARCH_VAR_1}
    Search_With_Enter   ${SEARCH_VAR_2}
    Search_With_Enter   ${SEARCH_VAR_3}
    Search_With_Enter   ${SEARCH_VAR_4}
    [Teardown]  Close Browser