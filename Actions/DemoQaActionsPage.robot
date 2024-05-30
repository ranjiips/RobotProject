# Created by sranjith at 24-05-2024
*** Settings ***
Library     ../libs/CommonLibraries.py
Resource    ../Locators/DemoQaLocatorsPage.robot


*** Keywords ***
Navigate to the URL
    Create Webdriver    Chrome
    Maximize Browser Window
    Go To   ${DEMOQA_URL}

#Fill the Student Registration Form
Get the DataFrame Contents
    [Arguments]     ${file_path}
    ${file_content}    Get Data Frame   ${file_path}
    Log      ${file_content}    console=${True}
    Log      ${file_content['FIRST_NAME']}    console=${True}
    ${headers}     Get Column values from Data frames  ${file_content}
    Log   ${headers}    console=${True}
    ${row_count}    Get Row Count in Data Frames    ${file_content}
    Log   ${row_count}    console=${True}

#Validate the Form and Submit

