*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem 

*** Test Cases ***
TC1_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=http://www.echoecho.com/javascript4.htm    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Sleep    3s    
    Click Element    name=B1    
    Sleep    3s    
    ${MSG}    Handle Alert    ACCEPT    10s
    Log To Console    ${MSG}    
  
TC2_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=http://www.echoecho.com/javascript4.htm    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Sleep    3s    
    Click Element    name=B2    
    Sleep    3s    
    ${MSG}    Handle Alert    ACCEPT    10s
    Log To Console    ${MSG}   
      
    Alert Should Be Present    text=Confirm boxes offer the user a choice of clicking OK or Cancel    action=ACCEPT    timeout=30s
    
TC3_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=http://www.echoecho.com/javascript4.htm    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Sleep    3s    
    Click Element    name=B2    
    Sleep    3s    
    Handle Alert
    Click Element    name=B3    
   
TC4_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=http://www.echoecho.com/javascript4.htm    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Sleep    3s    
    Click Element    name=B3    
    ${MSG}    Handle Alert    LEAVE    30s
    Log To Console    ${MSG}     
    Input Text Into Alert    teja    LEAVE    30s
    Sleep    3s    
    Handle Alert    ACCEPT