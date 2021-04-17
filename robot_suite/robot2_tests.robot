*** Settings ***
Library    Collections     

*** Variables ***
${BROWSER}    chrome
@{COLOUR}    red    green    yellow
&{DIC}    username=teja    pssword=pass123

*** Test Cases ***
TC1
    Log To Console    ${BROWSER}    
    Log To Console    ${COLOUR}[0] 
    Log To Console    ${DIC}[username=teja] 
    
        
TC2
     Log To Console    ${BROWSER}    
    Log To Console    ${COLOUR}[1] 
        
   
        