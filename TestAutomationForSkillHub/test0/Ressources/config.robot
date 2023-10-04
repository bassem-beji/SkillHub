*** Variables ***
#browser
${browser}        Chrome



#comptetest
${emailtest}      bassem@gmail.com
${passwordtest}    bassem



#url
${urlExpertPage}    http://localhost:4200/expertPage
${urlCreateSession}    http://localhost:4200/sessionForm
${expertloginPage}    http://localhost:4200/login
#xpath
${email2}         xpath=//input[@formcontrolname='Email']
${password2}      xpath=//input[@formcontrolname='Password']
${loginbouton2}    xpath=/html/body/app-root/app-login/div/div/div/div/div/div[2]/form/button


#Elements
${text}           xpath=//*[@id="APjFqb"]
${createSession}    xpath=/html/body/app-root/app-expert-page/div/section[2]/div/button
${ContinueToSessionDetails}    xpath=//*[@id="msform"]/fieldset[1]/button[2]
${loggedInUsernameWithGreetingLocator}    xpath=/html/body/app-root/app-expert-page/div/nav/div/div/span
${SMALL_RETRY_COUNT}    2x
${username}       Bassem beji
${BackExpertPage}    xpath=//*[@id="msform"]/fieldset[1]/button[1]
${chooseFile}     xpath=//*[@id="fileLabel"]
${image}          xpath=//*[@id="selectedImage"]
${imageButton}    xpath=//*[@id="fileLabel"]
${uploadImageText}    xpath=//*[@id="msform"]/fieldset[1]/h3
${imagePath}      C:\\Users\\LENOVO\\Desktop\\test1\\Ressources\\testimage.jpeg
${uploadButton}    xpath=//*[@id="upload"]

#Session Details
${Session Details}    xpath=//*[@id="msform"]/fieldset[2]/h3
${Title}          xpath=//*[@id="floatingInput"]
${Objectives}     xpath=//*[@id="msform"]/fieldset[2]/div[2]/div[1]/textarea
${Requirements}    xpath=//*[@id="msform"]/fieldset[2]/div[2]/div[2]/textarea
${ContinueToDate&Duration}    xpath=//*[@id="msform"]/fieldset[2]/button[2]
${BackUploadImage}    xpath=//*[@id="msform"]/fieldset[2]/button[1]


#Specify Session Duration
${SessionDuration}    xpath=//*[@id="msform"]/fieldset[3]/h3
${Session Date}    xpath=//*[@id="sessionDate"]
${Duration}       xpath=//*[@id="sessionDuration"]
${Finish}         xpath=//*[@id="msform"]/fieldset[3]/button[2]
${BackSessionDetails}    xpath=//*[@id="msform"]/fieldset[3]/button[1]


