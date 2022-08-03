*** Keywords ***
Read Invoice Fixtures
    ${json_data}=     Get File    ${EXECDIR}/login.json
    ${json}=    evaluate    json.loads('''${json_data}''')    json
    [return]  ${json}

Initialize Test Data
    ${json}=    Read Invoice Fixtures
    Set Global Variable  ${superadmin}    ${json}

Get Super Admin credentials
    [Arguments]    ${invoice_name}
    ${superadmin}=    Get From Dictionary     ${superadmin}     ${invoice_name}
    [return]    ${superadmin}