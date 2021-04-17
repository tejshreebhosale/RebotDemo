*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem  

*** Test Cases ***
TC1_OpenWebsite
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.gotomeeting.com/en-in    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    
    Click Element    xpath=//a[@class='button button--primary button--small']    
    Input Text    xpath=//input[@name='FirstName']    teja
    Input Text    xpath=//input[@name='LastName']    bhosale
    Input Text    xpath=//input[@name='Email']    tejaBhosale@gamil.com
    Input Text    xpath=//input[@name='PhoneNumber']    1236589          
    Select From List By Label    JobTitle    Engineering   
    Input Password    xpath=//input[@name='Password']    password123       
   
    #ElementClickInterceptedException: Message: element click intercepted: Element <input name="companySize" type="radio" value="10-99"> is not clickable at point (788, 855). Other element would receive the click: <div class="truste-text">...</div>
  #(Session info: chrome=89.0.4389.114)

    Wait Until Element Is Visible    xpath=//input[@name='companySize' and @value='10-99']  
    #Click Element    xpath=//input[@name='companySize' and @value='10-99']
    Click Element    xpath=//button[@id='truste-consent-button']    
    Select Radio Button    companySize    10-99
    #Select From List By Value    xpath=//input[@name='companySize' and @value=' 10-99']     10-99    
    Click Element    xpath=//button[text()='Sign Up']    

     
    

    
    
    
            