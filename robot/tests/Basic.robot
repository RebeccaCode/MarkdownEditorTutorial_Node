*** Settings ***
Library    SeleniumLibrary    timeout=5.0    implicit_wait=0.0    

*** Test Cases ***
Application is running
    Go To    http://localhost:8190
    Page Should Contain    Hello World!   