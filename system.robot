*** Keywords ***
Configure Selenium
    Set Selenium Implicit Wait    10 seconds

Navigate To LoginPage
    Open Browser    ${SiteUrl}    ${BROWSER}
    Maximize Browser Window

Exit Selenium
    Capture Page Screenshot
    Close All Browsers
    
Generate Random Number
    ${random_number}    Evaluate    random.randint(1000000, 9999999)
    [return]    ${random_number}
