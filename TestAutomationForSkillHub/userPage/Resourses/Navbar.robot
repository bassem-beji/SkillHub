Resource    ./Variables.robot

Resource    ./Common.robot
*** Settings ***
Library           ../../../../../AppData/Local/Packages/PythonSoftwareFoundation.Python.3.10_qbz5n2kfra8p0/LocalCache/local-packages/Python310/site-packages/SeleniumLibrary/
Library           ../../../../../AppData/Local/Packages/PythonSoftwareFoundation.Python.3.10_qbz5n2kfra8p0/LocalCache/local-packages/Python310/site-packages/SeleniumLibrary/

*** Keywords ***
User Page Should Be Open
    open browser    ${BASE_URL}/userPage    ${browser}
    Maximize Browser Window

Go To Profile Page
    Click Element    ${PROFILE_LINK}
    Page Should Contain Element    //div//h4[contains(text(), 'Profile informations:')]
    sleep    2s

Go To Reservation Page
    Click Element    ${RESERVATION_LINK}
    sleep    1s
    ${CARD_STATUS}    Run Keyword And Return Status    Element Should Be Visible    xpath=//div[@class="cardeSession"]
    ${NO_SESSION_STATUS}    Run Keyword And Return Status    Element Should Be Visible    xpath=//div//h4[contains(text(), 'No Session Is Reserved')]
    Run Keyword If    ${CARD_STATUS}    Log    Des cartes de réservation sont présentes
    Run Keyword If    ${NO_SESSION_STATUS}    Log    Aucune carte de réservation n'est présente

Go To Home Page
    Click Element    ${HOME_LINK}
    ${ELEMENT_STATUS}    Run Keyword And Return Status    Wait Until Element Is Visible    //div[@class="scrollingCard"]
    Run Keyword If    ${ELEMENT_STATUS}    Log    Des cartes des sessions sont présentes
    Run Keyword Unless    ${ELEMENT_STATUS}    Log    Des cartes des sessions ne sont pas présentes
