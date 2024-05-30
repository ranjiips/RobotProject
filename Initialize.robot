# Created by sranjith at 29-05-2024
*** Settings ***

#Library     SeleniumLibrary  WITH NAME  SelLib
Library     Selenium2Library  WITH NAME  SelLib2
Library     RequestsLibrary
Library     Collections
Library     OperatingSystem
Library     ./libs/CommonLibraries.py
#Resource    ./Locators/DemoQaLocatorsPage.robot
Resource    ./Actions/DemoQaActionsPage.robot
Resource    ./Actions/API_Page.robot



*** Variables ***
${base_url}         https://rahulshettyacademy.com
${add_book}         /Library/Addbook.php
${get_book_id}      /Library/GetBook.php
${delete_book_id}   /Library/DeleteBook.php
${book_id}          ADBH04567       #ADBH09876HJI904567892