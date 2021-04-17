*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem  

*** Test Cases ***
TC_ValidCredential
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://netbanking.hdfcbank.com/netbanking/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    
    Select Frame    name=login_page
    Input Text    xpath=//input[@name='fldLoginUserId']    text124
    #click on continue
    Click Element    xpath=(//img[@alt='continue'])[1]
    
    Unselect Frame    
    
#following 
#//input[@name='fldLoginUserId']/following::img

#preceding
#//td[contains(text(),'Custe')]/preceding::img

#AND/OR

#//*[@id='email' and @title='Email']

