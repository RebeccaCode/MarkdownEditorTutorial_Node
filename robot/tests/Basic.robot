*** Settings ***
Library    SeleniumLibrary    timeout=5.0    implicit_wait=0.0    

*** Test Cases ***
Application is running
    Go To    http://localhost:8190
    Page Should Contain    Write your text here...
    Page Should Contain Element    id:pad       
    Page Should Contain Element    id:markdown
    
Markdown conversion works
    Go To    http://localhost:8190
    ${emphasized}    Set Variable    automatically
    ${strong}    Set Variable    formatted!!!
    Input Text    id:pad    Writing my text here and it is _${emphasized}_ __${strong}!!!___
    Page Should Contain Element    //em[contains(text(),"${emphasized}")]
    Page Should Contain Element    //strong[contains(text(),"${strong}")]
        