# Created by sranjith at 24-05-2024
*** Settings ***
Library     ../libs/CommonLibraries.py
Resource    ../Locators/DemoQaLocatorsPage.robot


*** Keywords ***

Get the DataFrame Contents
    [Arguments]     ${file_path}
    ${file_content}    Get Data Frame   ${file_path}    PersonDetails
    Log      ${file_content}    console=${True}
    Log      ${file_content['FIRST_NAME']}    console=${True}
    ${headers}     Get Column values from Data frames  ${file_content}
    Log   ${headers}    console=${True}
    ${row_count}    Get Row Count in Data Frames    ${file_content}
    Log   ${row_count}    console=${True}

Fill the Practice Form
    [Arguments]     ${file_path}
    ${file_content}    Get Data Frame   ${file_path}    PersonDetails
    ${FIRST_NAME}	${LAST_NAME}	${EMAIL}	${GENDER}	${MOBILENUM}	${DOB}	${SUBJECTS}	${HOBBIES}	${ADDRESS}	${STATE}	${CITY}   Get Record by UserID    ${file_content}
    Enter Text  ${FIRST_NAME_LOCATOR}   ${FIRST_NAME}
    Enter Text  ${LAST_NAME_LOCATOR}   ${LAST_NAME}
    Enter Text  ${EMAIL_LOCATOR}   ${EMAIL}
#    ${GENDER_LOCATOR}   Replace String      ${GENDER_LOCATOR}   GenderValue     ${GENDER}
#    Select Radio   ${GENDER_LOCATOR}     ${GENDER}   gender
    Enter Text  ${MOBILENUM_LOCATOR}   ${MOBILENUM}
#    Enter Text  ${DOB_LOCATOR}   ${DOB}
#    Enter Text  ${DOB_LOCATOR}   ${DOB}
#    Enter Text  ${SUBJECTS_LOCATOR}   ${SUBJECTS}
#    Enter Text  ${HOBBIES_LOCATOR}   ${HOBBIES}
    Enter Text  ${ADDRESS_LOCATOR}   ${ADDRESS}
#    Enter Text  ${STATE_LOCATOR}   ${STATE}
#    Enter Text  ${CITY_LOCATOR}   ${CITY}
#    Click On Element    ${SUBMIT_LOCATOR}
