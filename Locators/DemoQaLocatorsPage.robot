# Created by sranjith at 24-05-2024
*** Settings ***

*** Variables ***

${FORM_LABELS}          //label[@class='form-label']
${FIRST_NAME_LOCATOR}   //input[@id='firstName']
${LAST_NAME_LOCATOR}    //input[@id='lastName']
${EMAIL_LOCATOR}                //input[@id='userEmail']
#${GENDER_LOCATOR}       //label[text()='GenderValue']/preceding-sibling::input
${GENDER_LOCATOR}       //input[@value='GenderValue']
${MOBILENUM_LOCATOR}    //input[@id='userNumber']
${DOB_LOCATOR}          //input[@id='dateOfBirthInput']
#${SUBJECTS_LOCATOR}
${HOBBIES_LOCATOR}      //label[text()='HobbiesValue']/preceding-sibling::input
${ADDRESS_LOCATOR}      //textarea[@id='currentAddress']
#${STATE_LOCATOR}
#${CITY_LOCATOR}
${SUBMIT_LOCATOR}       //button[@id='submit']