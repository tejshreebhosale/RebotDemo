*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    


*** Test Cases ***
TC1_OpenWebsite
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    Input Text    id=authUser   admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    Bosnian    
    Click Button    xpath=//button[@type='submit']
    Page Should Contain    Flow Board    
    Mouse Over    id=username
    Click Element    xpath=//li[text()='Logout']   
    
TC2_InvalidCredential
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    Input Text    id=authUser   admin123
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    Bosnian    
    Click Button    xpath=//button[@type='submit']
    Set Selenium Implicit Wait    10s
    Element Text Should Be    //div[contains(text(),'Invalid')]    Invalid username or password    
    Element Should Contain    //div[contains(text(),'Invalid')]    Invalid username
    
TC3_ValidateDescription
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Element Should Contain    //p[contains(text(),'most')]    Electronic Health Record    
    Element Should Contain    //p[contains(text(),'most')]    Medical Practice Management

TC4_GetDetails
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    ${desctext}    Get Text    //p[contains(text(),'most')]
    Log To Console    ${desctext}    
    
    Should Be Equal    ${desctext}    The most popular open-source Electronic Health Record and Medical Practice Management solution.
    
    ${placeholdervalue}    Get Element Attribute    id=authUser    placeholder    
    Log To Console    ${placeholdervalue}
    Element Attribute Value Should Be    id=authUser    placeholder    Username:    
    
    ${title}        Get Title
    Log To Console    ${title}    
    Log    ${title}    
    
    ${url}    Get Location
    Log To Console    ${url}
    
    Input Text    xpath=//input[@id='authUser']    admin  
    ${value}    Get Value    xpath=input[@id='authUser']    
    Log To Console    ${value}                  