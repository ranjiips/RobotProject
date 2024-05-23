*** Settings ***
Documentation    Suite description

Resource    ./../InitializeLibraries.robot
Resource    ./../InitializeResources.robot

*** Keywords ***
Initialize
    Open Chrome with Options

Clean Up
    close browser

Navigate to URL
    [Documentation]     Navigate to given URL
    [Arguments]     ${URL}
    Go To   ${URL}
    log to console  Navigate to the URL: ${URL}
    capture page screenshot     ${OUTPUTDIR}/Screenshot/Screen_{index:04}.png

Open Chrome with Options
    [Documentation]     Open chrome browser with the options and initiazlise the browser
    ${CHROMEDRIVER}     set variable    ${Browser_Path}
    Set Environment Variable    webdriver.chrome.driver     ${CHROMEDRIVER}
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${options}    add_experimental_option      useAutomationExtension    ${FALSE}
    Call Method    ${options}    add_argument      start-maximized
    Call Method    ${options}    add_argument      acceptInsecureCerts
    Call Method    ${options}    add_argument      ignore-ssl-errors
    Call Method    ${options}    add_argument      ignore-certificate-errors
    Call Method    ${options}    add_argument      disable-infobars
    Call Method    ${options}    add_argument      disable-extensions
    Call Method    ${options}    add_argument      disable-default-apps
    Create Webdriver    Chrome      executable_path=${CHROMEDRIVER}
    maximize browser window

Verify Page Title
    [Arguments]     ${page_title}
    ${title}    get title
    log     Page Title: ${title}    console=${True}
    Should Be Equal As Strings   ${page_title}   ${title}