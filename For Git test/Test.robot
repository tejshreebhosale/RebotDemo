*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem 
Library    String    

*** Test Cases ***
TC1_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://phptravels.net/en    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Set Selenium Speed    5s
    Click Element    xpath=//span[text()='Economy']    
    Click Element    xpath=//span[text()='Business']    

    Click Element    xpath=//input[@id='flightSearchRadio-1']
