*** Variables ***

${Delete}         xpath=/html/body/app-root/app-expert-sessions/div/div/div[2]/div[2]/span/button
${Update}         xpath=/html/body/app-root/app-expert-sessions/div/div/div[2]/button
${session}        xpath=/html/body/app-root/app-expert-sessions/div/div/div[2]

#update
${image}          xpath=//*[@id="selectedImage"]
${imageButton}    xpath=//*[@id="fileLabel"]
${imagePath}      C:\\Users\\LENOVO\\Desktop\\test\\test2\\Ressources\\testimage.jpeg
${uploadButton}    xpath=//*[@id="upload"]

${Title}          xpath=//*[@id="floatingInput"]
${Objectives}     xpath=//*[@id="msform"]/fieldset[2]/div[2]/div[1]/textarea
${Requirements}    xpath=//*[@id="msform"]/fieldset[2]/div[2]/div[2]/textarea


${ContinueToSessionDetails}    xpath=//*[@id="msform"]/fieldset[1]/button[2]
${ContinueToDate&Duration}    xpath=//*[@id="msform"]/fieldset[2]/button[2]



#Specify Session Duration
${SessionDate}    xpath=//*[@id="sessionDate"]
${Duration}       xpath=//*[@id="sessionDuration"]
${Finish}         xpath=//*[@id="msform"]/fieldset[3]/button[2]


#The changes are saved
${newTitle}       xpath=/html/body/app-root/app-expert-sessions/div/div/div[2]/div[2]/h4
#${newDuration} \ \ \ xpath=//p[contains(@class, 'bi-hourglass-bottom')]
#${newDate} \ \ \ \ \ \ \ xpath=//p[contains(@class, 'bi-calendar-day-fill')]


