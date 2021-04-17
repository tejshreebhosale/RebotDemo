*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem 

*** Test Cases ***
TC1_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.royalcaribbean.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Run Keyword And Ignore Error    Click Element    xpath=//*[@class='email-capture__close']
    
    ${linkCount}    Get Element Count    xpath=//*[@class='email-capture__close']
    Log To Console    ${linkCount}    
    
    Run Keyword If    ${linkCount}>0    Click Element    xpath=//*[@class='email-capture__close']    

    Click Element    id=rciHeaderSignIn
    Click Element    link=Create an account    
    Input Text    xpath=//*[@data-placeholder='First name/Given name']    teja  
    Input Text    xpath=//*[@data-placeholder='Last name/Surname']    shinde
    Click Element    xpath=//*[text()='Month']    
    Sleep    1s    
    Click Element    xpath=//*[contains(text(),'April')]
    Click Element    xpath=//*[contains(text(),'Day')]
    Sleep    1s    
    Click Element    xpath=//*[contains(text(),' 4 ')]
    Input Text    xpath=//*[@data-placeholder='Year']    1993    
    Click Element    xpath=//*[contains(text(),'Country/Region of residence')]
    Click Element    xpath=//*[contains(text(),' India ')]                                  