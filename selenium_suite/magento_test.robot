*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem    

*** Test Cases ***
TC1_Basic
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://magento.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    

    Click Link    link=My Account       
    Input Text    id=email     tejshreebhosale93@gmail.com             
    Input Password    id=pass    Tej$hree23    
    Click Element    name=send    
    #wait until dashboard page avaible 
    Title Should Be    My Account    
    Click Element    link=Log out    