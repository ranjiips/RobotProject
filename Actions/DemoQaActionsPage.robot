# Created by sranjith at 24-05-2024
*** Settings ***
Library     ../libs/CommonLibraries.py
Resource    ../Locators/DemoQaLocatorsPage.robot


*** Keywords ***
Navigate to the URL
    Create Webdriver    Chrome
    Maximize Browser Window
    Go To   ${DEMOQA_URL}

Fill the Student Registration Form
    [Arguments]     ${file_path}
    ${file_content}    Get Data Frame   ${file_path}
    Log To Console    ${file_content}

#Validate the Form and Submit