*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem  
#Library    AutoItLibrary

*** Test Cases ***
TC1_WindAuthUrl
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://demo.guru99.com/test/basic_auth.php    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    #Send    Teja
    Sleep    1s    
    #Send    {ENTER}
    Sleep    1s 
    #Send    pass123
    Sleep    1s 
    #Send    {ENTER}
    
TC2_Upload
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.naukri.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    xpath=//*[contains(text(),'Upload CV')]    
    Sleep    2s    
    #Control Focus    Open    ${EMPTY}    Edit1
    Sleep    2s
   # Control Set Text    Open    ${EMPTY}    Edit1    C:\\Users\\tejshreeb\\Documents\\Robot Freamwork\\Upload Test.txt
    Sleep    2s    
    #Control Click    Open    ${EMPTY}    Button1
    
    Wait Until Page Contains    upload Successfully    50s
    Page Should Contain    upload Successfully 