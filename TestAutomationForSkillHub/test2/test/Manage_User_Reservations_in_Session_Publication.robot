*** Settings ***
Library           SeleniumLibrary
Resource          ../Ressources/configExpert.robot
Resource          ../Ressources/keywordManageUser.robot
Resource          ../Ressources/config.robot
Resource          ../Ressources/keywords.robot

*** Test Cases ***
Displaying and managing the list of users
    Open my Browser expert    ${expertPage}    ${browser}
    #Maximize Browser Window
    sleep    10
    click Element    ${mysessionslien}
    sleep    3
    click Element    ${checkList}
    sleep    4
    verifyUserInfo
    checkAcceptanceFieldsExistence
    sleep    3
    accept
    sleep    3
    refuse
    sleep    3
    [Teardown]    Close Browser

accept user
    Open my Browser expert    ${expertPage}    ${browser}
    Maximize Browser Window
    sleep    5
    click Element    ${mysessionslien}
    sleep    3
    click Element    ${checkList}
    sleep    5
    accept
    Close Browser
    keywords.Open my Browser    ${userPage}    ${browser}
    sleep    3
    click Element    ${myReservations}
    sleep    3
    verify user accepted
    sleep    3
    [Teardown]    Close Browser

refuse user
        Open my Browser expert    ${expertPage}    ${browser}
    #Maximize Browser Window
    sleep    10
    click Element    ${mysessionslien}
    sleep    3
    click Element    ${checkList}
    sleep    5
    refuse
    Close Browser
    keywords.Open my Browser    ${userPage}    ${browser}
    sleep    3
    click Element    ${myReservations}
    sleep    3
    verify user refused
    sleep    3
    [Teardown]    Close Browser
