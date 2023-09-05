*** Settings ***
Library    SeleniumLibrary
Resource    ./KeywordsFile.robot

*** Keywords ***
Add to Cart
    Add Implicit Wait
    Get the page title
    Click on the link
