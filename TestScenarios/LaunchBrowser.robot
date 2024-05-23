*** Settings ***
Documentation    Suite description
Resource    ./../InitializeLibraries.robot
Resource    ./../InitializeResources.robot

#Test Setup     Initialize
Test Teardown   Clean Up

*** Variables ***
${URL}   https://robotframework.org/
#${ChromeDriver}     ./../RobotProject/Resources/Drivers/chromedriver.exe
*** Test Cases ***
Launch Application
    [Tags]    Web
#    Navigate to URL     ${URL}
#    Verify Page Title   Robot Framework
#    Open browser     ${URL}      browser=chrome     #executable_path=${ChromeDriver}
    Open Chrome with Options
    ${webdriver}     Get webdriver instance
    log      webdriver: ${webdriver}

