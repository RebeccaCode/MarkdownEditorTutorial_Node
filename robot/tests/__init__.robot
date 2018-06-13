*** Settings ***
Library    SeleniumLibrary    timeout=5.0    implicit_wait=0.0
Suite Setup    Startup
Suite Teardown    Cleanup

*** Keywords ***
Startup
    Open Browser    https://www.google.com

Cleanup
    Close All Browsers