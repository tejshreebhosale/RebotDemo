*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem  

*** Test Cases ***
TC1_WindAuthUrl
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.naukri.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    
# Username password@URL