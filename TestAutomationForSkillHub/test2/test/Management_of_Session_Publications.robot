*** Settings ***
Library           SeleniumLibrary
Resource          ../Ressources/configExpert.robot
Resource          ../Ressources/keywordManageUser.robot
Resource          ../Ressources/configManageSession.robot
Resource          ../Ressources/keywordsManageSession.robot

*** Test Cases ***
Delete a Session Publication
    Open my Browser expert    ${expertPage}    ${browser}
    #Maximize Browser Window
    sleep    5
    click Element    ${mysessionslien}
    sleep    5
    cancel session
    [Teardown]    Close Browser

update a Session Publication
    Open my Browser expert    ${expertPage}    ${browser}
    Maximize Browser Window
    sleep    5
    click Element    ${mysessionslien}
    sleep    5
    update session
    sleep    5
    The changes are saved
    sleep    5
    [Teardown]    Close Browser
