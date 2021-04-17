*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem 
Library    String    

*** Test Cases ***
TC1_OpenWebsite    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://phptravels.net/en    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Set Selenium Speed    5s
    Click Element    xpath=//span[text()='Economy']    
    Click Element    xpath=//span[text()='Business']    

    Click Element    xpath=//input[@id='flightSearchRadio-1']

    #Click Element    xpath=//div[@id='select2-drop']    
    #Input Text    xapth=//div[@id='select2-drop']/div/input    New York(EWR)
    
    #Click Element    xpath=//div[@id='s2id_location_to']    
    #Input Text    xpath=//div[@id='select2-drop']/div/input    London(BQH)
   
#option 
    Click Element    xpath=//*[text()='LHE']
    Input Text    xpath=//*[@id='select2-drop']//input    New York        
    Click Element    xpath=//*[contains(text(),'JFK')]

#option2
    Click Element    xpath=//*[text()='DXB']
    #Input Text    xpath=//*[@id='select2-drop']//input    New York
    Press Keys    None    London
    Click Element    xpath=//*[contains(text(),'BQH')]    
    
#option3
    Click Element    xpath=//*[text()='DXB']
    Press Keys    None    London  
    Press Keys    None    RETURN
    
    # complete Js 
    #Execute Javascript    document.getElementById('FlightsDateStart').value='2014-04-03'
    
    ${departelement}    Get WebElement    xpath=//input[@placeholder='Depart']
    #Execute Javascript    arguments[0.click();]
    Execute Javascript    arguments[0].value='2021-04-03'    AEGUMENTS    ${departelement}

    Execute Javascript    document.getElementById('FlightsDateEnd').value='2014-04-03'
    
    ${val}    Execute Javascript    return document.getElementById('FlightsDateEnd').value
    Log To Console    ${val}    

     ${val}    Execute Javascript    return document.title
    Log To Console    ${val}   
    ${adultcount}    Set Variable    3
    
    FOR    ${i}    IN    ${adultcount}
        Click Element    xpath=//*[@name='fadults']/following::button    
    END
    
    ${childcount}    Set Variable    3
    
    FOR    ${i}    IN    ${childcount}
        Click Element    xpath=//*[@name='fchildren']/following::button    
    END

    Click Element    xpath=//button[contains(text(),'Search')]    
    Page Should Contain    JFK    
    Page Should Contain    BQH    