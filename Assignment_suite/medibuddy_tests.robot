*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem  

*** Test Cases ***
TC1_OpenWebsite
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.medibuddy.in/    browser=chrome
    Maximize Browser Window
    #Set Selenium Implicit Wait    50s

    #Wait Until Element Is Visible    xapth=//button[@id='wzrk-cancel']
    #Element 'xapth=//button[@id='wzrk-cancel']' not visible after 5 seconds.
    #Wait Until Element Contains    xapth=//button[@id='wzrk-cancel']    Not Now  
    #Element with locator 'xapth=//button[@id='wzrk-cancel']' not found. 
    
    Set Selenium Implicit Wait    50s
    #Alert Should Be Present    action=DISMISS
    #Handle Alert    DISMISS    timeout=50s          
    
    
    #Alert not found in 5 seconds.
        
    #Click Element    xapth=//button[@id='wzrk-cancel']
    #Element with locator 'xapth=//button[@id='wzrk-cancel']' not found.       
    Click Element    xpath=//div[@class='wzrk-alert wiz-show-animate']/div[3]/button[@id='wzrk-cancel']    

    Click Element    xpath=//a[text()='Signup']
    Input Text    xpath=//input[@name='firstName']    Tejshree
    Input Text    xpath=//input[@name='phone']    99226598566
    Input Text    xpath=//input[@name='username']    tejshreeb
    Input Password    xpath=//input[@name='password']    password   
    Select Checkbox    xpath=//input[@type='checkbox']
    #Checkbox Should Be Selected    //input[@type='checkbox']
    #Checkbox '//input[@type='checkbox']' should have been selected but was not.
    Click Element    xpath=//button[text()='Register']                 
    

    
    
    
    
            