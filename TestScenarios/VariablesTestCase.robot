*** Settings ***
Documentation    Suite description

Resource    ./../InitializeResources.robot
Resource    ./../InitializeLibraries.robot


*** Test Cases ***
Handle String Variables
    [Tags]    Scalar
    ${value}    set variable    Ranjith_Kumar
    log to console   String before format: ${value}
    ${value}    clean string    ${value}
    log     String after format: ${value}    console=${True}

Concatenate String Variables
    [Tags]    Scalar
    ${value1}    set variable    Ranjith
    ${value2}    set variable    Kumar
    ${value}    concatenate_two_string    ${value1}     ${value2}
    log     String after concatenation: ${value}    console=${True}

Handle Numbers
    [Tags]    Scalar
    ${num1}    set variable    12
    ${num2}    set variable    34
    ${num3}     Evaluate    ${num1}+${num2}
    log     Sum of ${num1} and ${num2} is: ${num3}    console=${True}

Handle List Varaibles
    [tags]  List
    @{name}   create list    Ranjith  Kumar  Gokul
    ${index}  set variable  1
    FOR  ${value}  IN  @{name}
        log to console  ${index}. ${value}
        ${index}    evaluate    ${index}+1
    END

Handle Dictionary Variables
    [tags]  Dictionary
    &{student_details}   Create Dictionary   Name=Ranjith  Gender=Male  Age=36
    ${name}     Get From Dictionary     ${student_details}  Name
    log     Name: ${name}   console=${True}