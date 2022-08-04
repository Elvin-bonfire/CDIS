*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    css:[placeholder="Username"]    ${username}

Enter Password
    [Arguments]    ${password}
    Click Element    css:[placeholder="Password"]
    Input Password    css:[placeholder="Password"]    ${password}

Fill out Login Details
    [Arguments]    ${superadmin}
    Enter Username    ${superadmin["username"]}
    Enter Password    ${superadmin["password"]}

Login Super Admin Account
    Page Should Contain     Always Updated.
    ${superadmin}=     Get Super Admin credentials    super_admin
    Fill out Login Details    ${superadmin}
    Click Button   Login
    Configure Selenium
    Wait Until Page Contains    Dashboard