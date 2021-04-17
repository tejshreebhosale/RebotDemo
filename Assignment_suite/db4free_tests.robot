*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem 

*** Test Cases ***
TC1_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.db4free.net/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    
    Click Element    xpath=(//ul[@class='nav navbar-nav']/li/a/b)[3]       
    Switch Window    phpMyAdmin
    Input Text    xpath=//input[@id='input_username']    db123
    Input Password    xpath=//input[@id='input_password']    test123    
    Click Element    xpath=//input[@id='input_go']         

    ${validationMessage}    Get Text    (//div[@class='alert alert-danger'])[2]
    Log To Console    ${validationMessage}    
    
    Close Window
    
    Switch Window    db4free.net - MySQL Database for free
    Click Element    xpath=//input[@alt='PayPal - The safer, easier way to pay online!']
    Click Element    xpath=//button[@id='acceptAllButton']
    Input Text    xpath=//input[@id='currencyAmount']    40.00    
    Click Element    xpath=//button[@id='payWithGuest']     
    Input Text    xpath=//input[@id='cardNumber']    1235487
    Input Text    xpath=//input[@id='expiry']    23  
    Input Text    xpath=//input[@id='securityCode']    1236    
    Input Text    xpath=//input[@id='firstName']    teja    
    Input Text    xpath=//input[@id='lastName']    teja   
    Input Text    xpath=//input[@id='billing_line1']    teja     
    Input Text    xpath=//input[@id='billing_line2']    teja 
    Input Text    xpath=//input[@id='billing_city']    teja       
    Select From List By Label    name=state    Arizona    
    Input Text    xpath=//input[@id='billing_postcode']    21548  
    Input Text    xpath=//input[@id='phone']    1236579  
    Input Text    xpath=//input[@id='email']    teja@gmail.com      
    Select Checkbox    xpath=//div[@class='ppvx_checkbox___3-5-8']/following::label/span/span
    Click Element    xpath=//button[@id='guestPaymentBtn']    
    
         