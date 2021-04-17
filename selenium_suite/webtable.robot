*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem 
Library    String    

*** Test Cases ***
TC1_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    
    ${name1}    Get Text    //table[@id='example']/tbody/tr[1]/td[2]
    Log To Console    ${name1}    
    
    ${name2}    Get Text    //table[@id='example']/tbody/tr[2]/td[2]
    Log To Console    ${name2}  
    
*** Test Cases ***
TC2_WebTable    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    
    ${rowCount}    Get Element Count    //table[@id='example']/tbody/tr
    
    FOR    ${i}    IN RANGE   1    ${rowCount}+1
        
        Scroll Element Into View    //table[@id='example']/tbody/tr[${i}]/td[2]
        ${name}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
        Log To Console    ${name}     
        
    Run Keyword If    '${name}'=Brenden Wagner    Click Element    //table[@id='example']/tbody/tr[${i}]/td[1]        
    Exit For Loop If    '${name}'=Brenden Wagner  
    END

*** Test Cases ***
TC3_WebTable    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    
    ${rowCount}    Get Element Count    //table[@id='example']/tbody/tr
    
    ${total}    Set Variable    0
    FOR    ${i}    IN RANGE   1    ${rowCount}+1
        ${sal}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[6]
        ${sal}    Remove String    ${sal}    $    , 
        # remove space
        ${sal}    Strip String    ${sal}    
        
        ${total}    Evaluate    ${total}+${sal}    
        #Log To Console    ${sal}     
        
    END
    
    Log To Console    ${total}    
   
*** Test Cases ***
TC5_Table
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s 
    Table Should Contain    //table[@id='example']    Bradley Greer 
    #header row is not  considering in th count      
    Table Row Should Contain    //table[@id='example']    1    Airi Satou    
    #header row is considering in th count   
    Table Cell Should Contain    //table[@id='example']    2    2    Airi Satou    
    Table Header Should Contain    //table[@id='example']    Name    
    Table Footer Should Contain    //table[@id='example']    Position    
    Table Column Should Contain    //table[@id='example']    2    Ashton cox    

*** Test Cases ***
TC6_WebTable    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s 

    ${rowCount}    Get Element Count    //table[@id='example']/tbody/tr
    
    ${res}    Set Variable    'False'
    
    FOR    ${i}    IN RANGE   ${rowCount}+1
        ${result}    Run Keyword And Ignore Error    Table Row Should Contain    //table[@id='example']    ${i}    Bruno Nash
        Log To Console    ${result}[0]              
        ${res}    Run Keyword If    '${result}[0]'='PASS'    Set Variable    'True'    
        Exit For Loop If    '${result}[0]'='PASS'
    END

    Log To Console    ${res}    
    Should Be Equal    ${res}    'True'    