*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem  

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.online.citibank.co.in/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Click Element    link=APPLY FOR CREDIT CARDS
    Sleep    5s    
    ${title}    Get Title
    Log To Console    ${title}
    # close first tab    
    Close Window    
    # close browser close all tab 
    Close Browser
    
TC2_MultipleTab
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.online.citibank.co.in/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Click Element    link=APPLY FOR CREDIT CARDS
    Sleep    5s 
    Switch Window    Online Credit Card Application Form | Citi India 
    Click Element    link=Travel        
    Sleep    5s 
    #close Online Credit Card Application Form | Citi India
    Close Window
    
TC4_MultipleTab
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.online.citibank.co.in/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Click Element    xpath=//*[text(),'Login']    
    Sleep    5s 
    Switch Window    NEW
    Input Text    id=User_id    Tejshree        
    Switch Window    MAIN
    ${title}    Get Title
    Log To Console    ${title}    
    