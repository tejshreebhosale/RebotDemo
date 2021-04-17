*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem  

*** Test Cases ***
TC1
    Log To Console    C:${/}Users${/}tejshreeb\\Documents\\Robot Freamwork\\Upload Test.txt    
    Log To Console    ${EXECDIR}\\files\\Upload Test.txt
    Log To Console    ${EXECDIR}${/}files${/}Upload Test.txt       

TC1_UploadFile
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.naukri.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    #Choose File    xpath=//*[@id='file_upload']    C:${/}Users\\tejshreeb\\Documents\\Robot Freamwork\\Upload Test.txt
    Choose File    xpath=//*[@id='file_upload']    C:\\Users\\tejshreeb\\Documents\\Robot Freamwork\\Upload Test.txt
    
    Wait Until Page Contains    upload Successfully    50s
    Page Should Contain    upload Successfully    
    
TC2_UploadFile
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.naukri.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Choose File    xpath=//*[@id='file_upload']    ${EXECDIR}${/}files${/}Upload Test.txt
    
    Wait Until Page Contains    upload Successfully    50s
    Page Should Contain    upload Successfully    
    

    