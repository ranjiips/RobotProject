# Created by sranjith at 24-05-2024
*** Settings ***
Library     ./libs/CommonLibraries.py
Resource    ./Initialize.robot


*** Keywords ***
Test initialize
    [Arguments]     ${clean_report_folder}=Y
    IF  '${clean_report_folder}'=='Y'
        Empty Directory  ${CURDIR}/./reports/Screenshots
        log    Delete Old Screenshots    console=${True}
    END

Test CleanUp
    close browser

Navigate to the URL
    [Arguments]     ${URL}
    Create Webdriver    Chrome
    Maximize Browser Window
    Go To   ${URL}

Enter Text
    [Arguments]     ${locator}  ${input_text}
    Wait Until Page Contains Element    ${locator}  timeout=30s
    Scroll Element Into View            ${locator}
    Wait Until Element Is Visible       ${locator}  timeout=30s
    Wait Until Element Is Enabled       ${locator}  timeout=30s
    log     Entering the value: ${input_text}   console=${True}
    Input Text  ${locator}   ${input_text}   clear=True
    Capture Page Screenshot 	${OUTPUTDIR}/Screenshots/Screenshots_{index:04}.png

Click On Element
    [Arguments]     ${locator}
    Wait Until Page Contains Element    ${locator}  timeout=30s
    Scroll Element Into View            ${locator}
    Wait Until Element Is Visible       ${locator}  timeout=30s
    Wait Until Element Is Enabled       ${locator}  timeout=30s
    Click Element   ${locator}
    Capture Page Screenshot 	${OUTPUTDIR}/Screenshots/Screenshots_{index:04}.png

Select Radio
    [Arguments]      ${locator}     ${input_text}   ${group_name}
    Page Should Contain Radio Button    ${locator}
    Scroll Element Into View        ${locator}
    Select Radio Button     group_name=${group_name}   value=${input_text}
    log     Selecting the Radio button value: ${input_text}   console=${True}
