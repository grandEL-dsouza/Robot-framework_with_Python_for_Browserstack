*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${remote_url}=    http://localhost:4444/wd/hub

*** Keywords ***
Open Session
    [Arguments]    ${capabilities}    ${test_url}
    open browser    remote_url=${remote_url}    desired_capabilities=${capabilities}   url=${test_url}

Close Session
    close browser

Add Implicit Wait
    set selenium implicit wait    5

Get the page title
    get title

Verify Local Page
    Title Should be     ‪GrandEL Dsouza‬ - ‪Google Scholar‬

Click on the link
    click element    xpath=//*[@id="gsc_a_b"]/tr[1]/td[1]/a

