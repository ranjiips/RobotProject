*** Keywords ***
Clean String
    [Arguments]     ${string}
    ${string}   remove string   ${string}   $  ,  '  "  (  )  [  ]  /  -  _
    [Return]    ${string}


