*** Settings ***
Library    Collections     

*** Test Cases ***
TC1_Variable
    #scaler varable
    
    ${name}    Set Variable    teja
    Log To Console    ${name}    
    
    #store list 
    
    @{colors}    Create List    red    green    yellow
    Log To Console    ${colors}[1]    
    
    Append To List    @{colors}    purple

    # get count of list
    ${count}    Get Length    ${colors}
    Log To Console    ${colors}

    FOR    ${i}    IN RANGE    0    3
        Log To Console    ${colors}[${i}] 
    END  
    
    FOR    ${color}    IN    @{colors}
         Log To Console    ${color}
    END  
    
    Set Global Variable    ${NAME}    tejatest
    
TC2_Dic
        # dictionary (key value ) 
        &{dic}    Create Dictionary    username=teja    password=teja1234
        Log To Console    ${dic}[username]   
       # Log To Console    ${NAME}     
        
        
   
        