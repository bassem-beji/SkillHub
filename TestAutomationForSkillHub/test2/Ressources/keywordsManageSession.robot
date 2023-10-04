*** Settings ***
Library           SeleniumLibrary
Resource          configExpert.robot

*** Keywords ***
cancel session
    Page Should Contain Element    ${session}
    click button    ${Delete}
    sleep    8
    Element Should Not Be Visible    ${session}

update session
    Page Should Contain Element    ${session}
    click button    ${Update}
    sleep    2
    Check the existence of the image
    Upload File    ${uploadButton}    ${imagePath}
    Check the existence of the image
    click element    ${ContinueToSessionDetails}
    Fill Session Details Form    ${Title}    ${Objectives}    ${Requirements}
    click element    ${ContinueToDate&Duration}
    Fill Session Date and Duration Form    ${SessionDate}    ${Duration}
    click element    ${Finish}

Check the existence of the image
    Page Should Contain Image    ${image}
    Page Should Contain Element    ${imageButton}

Upload File
    [Arguments]    ${locator}    ${file_path}
    Choose File    ${locator}    ${file_path}

Fill Session Details Form
    [Arguments]    ${Title}    ${Objectives}    ${Requirements}
    Wait Until Page Contains    Session info
    Input Text    ${Title}    title modifier
    Input Text    ${Objectives}    Objectives modifier
    Input Text    ${Requirements}    Requirements modifier

Fill Session Date and Duration Form
    [Arguments]    ${Session Date}    ${Duration}
    Input Text    ${SessionDate}    13/9/2017
    Input Text    ${Duration}    69

The changes are saved
    ${titre}=    Get Text    ${newTitle}
    Should Be Equal As Strings    ${titre}    title modifier
