# Created by sranjith at 23-05-2024
*** Settings ***
Documentation   To proatice the selenium with the form in the URL "https://demoqa.com/automation-practice-form"

Resource    ../Initialize.robot

Test Setup  Test initialize
Test Teardown   Test CleanUp

*** Variables ***
${CHROME_PATH}  C:/Ranjith/Learnings/ChromeDrivers
${file_path}    ${CURDIR}/../Resources/DemoQAFormData.xlsx
#python -m robot --outputdir=RobotProject/reports RobotProject/TestScenarios/TestCase01.robot

*** Test Cases ***
#Load the Tools QA Site
#    Navigate to the URL
#
#Fetch the Data from Input Files
#    Get the DataFrame Contents       ${file_path}

#Enter details in the Tools QA Form
#    Navigate to the URL         ${DEMOQA_URL}
#    Fill the Practice Form      ${file_path}

Book Actions in Libraries
    Add Book into Library DB
    Get Book Details By ID
    Delete the Book Details
