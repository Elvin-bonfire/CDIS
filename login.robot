*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

Resource    resources.robot
Resource    login-details-page.robot
Resource    data.robot
Resource    system.robot

Test Setup    Run Keywords    Initialize Test Data    Navigate To LoginPage
Test Teardown    Exit Selenium

***Test Cases ***

Verify if the user can log in using a valid username and valid password
    Login Super Admin Account

Verify if the user can't log in using invalid username and valid password
    Page Should Contain     Always Updated.
    ${superadmin}=     Get Super Admin credentials    super_admin
    Enter Username    superadmins
    Enter Password    ${superadmin["password"]}
    Click Button   Login
    Wait Until Page Contains    These credentials do not match our records.

Verify if the user can't log in using a valid username and invalid password
    Page Should Contain     Always Updated.
    ${superadmin}=     Get Super Admin credentials    super_admin
    Enter Username    superadmin
    Enter Password    superadmin03181900
    Click Button   Login
    Wait Until Page Contains    These credentials do not match our records.            