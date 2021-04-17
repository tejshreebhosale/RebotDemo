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
    Mouse Over    xpath=//*[text()='Patient/Client']
    Click Element    xpath=//*[@class='menuLabel' and text()='Patients']   
    Click Element    xpath=//button[@id='create_patient_btn1']   
    Select From List By Label    name=form_title    Ms.
    Input Text    xpath=//input[@id='form_fname']    tejatest   
    #${fname}    Get Text    xpath=//input[@id='form_fname']  
    Set Global Variable    ${fname}    tejatest    
    Input Text    xpath=//input[@id='form_lname']    tejatest
    Input Text    xpath=//input[@id='form_DOB']    23/10/93
    Select From List By Label    name=form_sex    Female
    Click Element    xpath=//button[@id='create']
    Click Element    xpath=//input[@value='Confirm Create New Patient']
    #get text from alter
    ${MSG}    Handle Alert
    Log To Console    ${MSG} 
    Handle Alert    ACCEPT        
    Click Element    xpath=//div[@class='closeDlgIframe']    
    
TC2_VerifyAddedRecord
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    Input Text    id=authUser   admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    Bosnian    
    Click Button    xpath=//button[@type='submit']
    Page Should Contain    Flow Board    
    Mouse Over    xpath=//*[text()='Patient/Client']
    Click Element    xpath=//*[@class='menuLabel' and text()='Patients']  
    Sleep    5s    
   # Input Text    xpath=//input[@placeholder='Search by Name']     ${fname}
   Input Text    xpath=//input[@placeholder='Search by Name']     tejatest  
   Sleep    10s    
   ${record}    Get Text    xpath=(//table[@class='table dataTable no-footer']/tbody/tr/td[1])[1]
   Log To Console    message    
    
             