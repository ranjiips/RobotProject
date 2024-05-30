# Created by sranjith at 30-05-2024
*** Settings ***
Library     ../libs/CommonLibraries.py
Resource    ../Initialize.robot

*** Variables ***
${book_id_value}

*** Keywords ***
Add Book into Library DB
    ${request_body}     Get Payload To Add Book Details
    ${response}     POST    ${base_url}${add_book}  json=${request_body}    expected_status=200
    IF    "${response.json()}[Msg]"=="Book Already Exists"
        log   Post response Message: ${response.json()}[Msg] for the ID ${response.json()}[ID]     ERROR   console=${True}
    ELSE
        log   Post response Message: Successfully added the record with the message: ${response.json()}[Msg] and the ID: ${response.json()}[ID]   console=${True}
    END
    Set Global Variable  ${book_id_value}   ${response.json()}[ID]

Get Payload To Add Book Details
    &{request_body}   Create Dictionary     name=Robotframework  isbn=ADCC09  aisle=456  author=Ranjith
    RETURN      ${request_body}

Get Book Details By ID
    ${get_response}     GET     ${base_url}${get_book_id}   params=ID=${book_id_value}    expected_status=200
    log   Get response: ${get_response.json()}    console=${True}
    log   Book Name: ${get_response.json()}[0][book_name]    console=${True}

Delete the Book Details
    &{request_body}   Create Dictionary     ID=${book_id_value}
    ${response}     POST    ${base_url}${delete_book_id}  json=${request_body}    expected_status=200
    IF    "${response.json()}[msg]"=="book is successfully deleted"
        log   Post response Message: ${response.json()}[msg]        console=${True}
    ELSE
        log   Post response Message: Failed to delete the book, message: ${response.json()}[msg]      ERROR   console=${True}
    END