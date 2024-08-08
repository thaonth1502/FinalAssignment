*** Settings ***
Documentation       This is some info about test Suite
Library             SeleniumLibrary


*** Variables ***


*** Test Cases ***
TC Create New Customer with fields blank
    Open New Browser
    Login with valid user and pass  mngr582243  1234567008@
    sleep    2s
    Click On New Customer menu
    sleep    2s
    Input blank All fields

*** Keywords ***
Open New Browser
    open browser        https://www.demo.guru99.com/v4/index.php   chrome
    maximize browser window
    wait until page contains    Guru99 Bank

Login with valid user and pass
    [Arguments]    ${username}  ${password}
    input text      name=uid        ${username}
    input text      name=password   ${password}
    click element    name=btnLogin
    wait until page contains    Manger Id : mngr582243

Click On New Customer menu
    click link    xpath=//a[normalize-space()='New Customer']
    sleep    3s

    page should contain    Add New Customer

Input blank All fields
        input text      name=name       ${EMPTY}
        ${message_name}=    get element attribute    id=message     innerHTML
        should be equal     ${message_name}    Customer name must not be blank
        click element    xpath=//input[@value='f']
        input text      id=dob          ${EMPTY}
        get text   id=message24    Date Field must not be blank
        input text      name=addr       ${EMPTY}
        get text   id=message3    Address Field must not be blank
        input text      name=city       ${EMPTY}
        element should contain    City Field must not be blank
        input text      name=state       ${EMPTY}
        element should contain    State must not be blank
        input text      name=pinno        ${EMPTY}
        element should contain    PIN Code must not be blank
        input text      name=telephoneno     ${EMPTY}
        element should contain    Mobile no must not be blank
        input text      name=emailid           ${EMPTY}
        element should contain    Email-ID must not be blank
        input password     name=password     ${EMPTY}
        element should contain    Password must not be blank
        sleep    1s
Exit Browser
    close browser


