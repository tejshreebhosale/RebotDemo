*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem 

*** Test Cases ***
TC1_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.redbus.in/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    
    Click Element    xpath=//div[@id='signin-block']
    Wait Until Element Is Visible    xpath=//li[@id='signInLink']
    Click Element    xpath=//li[@id='signInLink']            

    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    xpath=//input[@id='mobileNoInp']    9565896586    
    Unselect Frame