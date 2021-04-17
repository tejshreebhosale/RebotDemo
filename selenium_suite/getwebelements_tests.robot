*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem 

*** Test Cases ***
TC1_GetDetails    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.google.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    ${linkCount}    Get Element Count    xpath=//a
    Log To Console    ${linkCount} 
    
    ${href}    Get Element Attribute    xpath=//a[text()='Gmail']    href
    Log To Console    ${href}    
    
    ${text}    Get Text    xpath=//a[text()='Gmail']
    Log To Console    ${text}        
      
TC2_GetWebElementDetails    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.google.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    ${ele}    Get WebElement    xpath=//a[text()='Gmail']    
    Log To Console    ${ele}    
    
    ${href}    Get Element Attribute    ${ele}    href
    Click Element    ${href}    
    
TC3_GetWebElemenstDetails    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.google.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    
    ${linkCount}    Get Element Count    xpath=//a
    Log To Console    ${linkCount} 
    
    ${eles}    Get WebElements    //a    
    Log To Console    ${eles} 
    
   # ${href}    Get Element Attribute    ${eles}[0]    href
    #Click Element    ${href} 
    
    FOR    ${i}    IN RANGE    0    ${linkCount}
        ${href}    Get Element Attribute    ${eles}[${i}]    href
        Log To Console    ${href}    
          ${text}    Get Text    ${eles}[${i}] 
    Log To Console    ${text}    
    
    END   
    
TC4_GetWebElemenstDetails    
    Append To Environment Variable    Path    D:\\Softwares\\ForRobot\\chromedriver_win32
    Open Browser    url=https://www.google.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    
    ${elements}    Get WebElements    //a    
    Log To Console    ${elements}
    
    #Log To Console    ${elements}[0]
   # Convert To String    item    
  
    
    FOR    ${element}    IN    @{elements}
        ${href}    Get Element Attribute    ${element}    href  
        Log To Console    ${href}
        
    ${text}    Get Text    ${element}
    Log To Console    ${text}    
    
    Run Keyword If    '${text}'=='Images'    Click Element    ${element} 
    #| FAIL |
#StaleElementReferenceException: Message: stale element reference: element is not attached to the page document
  #(Session info: chrome=89.0.4389.114)    
       Exit For Loop If    '${text}'=='Images'

    END
        