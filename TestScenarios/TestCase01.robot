# Created by sranjith at 23-05-2024
*** Settings ***
Documentation   To proatice the selenium with the form in the URL "https://demoqa.com/automation-practice-form"

#Library     SeleniumLibrary  WITH NAME  SelLib
Library     Selenium2Library  WITH NAME  SelLib2
Library     ../libs/CommonLibraries.py
#Resource    ../Locators/DemoQaLocatorsPage.robot
Resource    ../Actions/DemoQaActionsPage.robot



*** Variables ***
${CHROME_PATH}  C:/Ranjith/Learnings/ChromeDrivers
${file_path}    ${CURDIR}/../Resources/DemoQAFormData.xlsx


*** Test Cases ***
Enter details in the Tools QA Form
    Navigate to the URL
    Fill the Student Registration Form      ${file_path}
#    Validate the Form and Submit

