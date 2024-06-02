# Created by sranjith at 29-05-2024
*** Settings ***

#   Robot Standard Libraries
Library  robot.libraries.OperatingSystem
Library  robot.libraries.String
Library  robot.libraries.Collections
Library  robot.libraries.DateTime    WITH NAME    DT
Library  robot.libraries.Process
Library  robot.libraries.XML
Library  json  WITH NAME  Json

#   Robot Extended Libraries
Library  RequestsLibrary
Library  SeleniumLibrary    WITH NAME   SelLib

# User defined Python Libraries
Library     ./libs/CommonLibraries.py
Library     ./libs/API_Methods.py




#Resource    ./Locators/DemoQaLocatorsPage.robot
Resource    ./Actions/DemoQaActionsPage.robot
Resource    ./Actions/API_Page.robot
Resource    ./GenericMethods.robot



*** Variables ***
${base_url}         https://rahulshettyacademy.com
${add_book}         /Library/Addbook.php
${get_book_id}      /Library/GetBook.php
${delete_book_id}   /Library/DeleteBook.php
${book_id}          ADBH04567       #ADBH09876HJI904567892

${DEMOQA_URL}   https://demoqa.com/automation-practice-form