*** Settings ***
Documentation    Suite description

Library     robot.libraries.String
Library     robot.libraries.OperatingSystem
Library     robot.libraries.Collections
Library     ./CustomLibraries/CommonFunctions.py
#Library     SeleniumLibrary  WITH NAME  SelLib
Library     Selenium2Library  WITH NAME  SelLib2
Library     RequestsLibrary