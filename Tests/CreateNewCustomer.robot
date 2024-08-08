*** Settings ***
Documentation       This is some info about test Suite
Library             SeleniumLibrary


*** Variables ***


*** Test Cases ***
TC Create New Customer
    Open New Browser
    Login with valid user and pass  mngr582243  1234567008@
    sleep    2s
    Click On New Customer menu
    sleep    2s
    Input value into some fields
    Click button Submit
    Verify information submit success
    Click on Logout menu
    Exit Browser

TC Create New Customer with fields blank
    Open New Browser
    Login with valid user and pass  mngr582243  1234567008@
    sleep    2s
    Click On New Customer menu
    sleep    2s



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

Input value into some fields
        input text      name=name       thaonth
        click element    xpath=//input[@value='f']
        input text      id=dob          15021989
        input text      name=addr       Ha noi
        input text      name=city       Ha noi
        input text      name=state       Cau Giay
        input text      name=pinno        100000
        input text      name=telephoneno     098765432
        input text      name=emailid           huongthao102@gmail.com
        input password     name=password     12345678@
        sleep    1s

Click button Submit
        click element    name=sub

Verify information submit success
        page should contain    Customer Registered Successfully!!!
Click on Logout menu
       click link    //a[normalize-space()='Home']
       click link  xpath=//a[normalize-space()='Log out']
       alert should be present    You Have Succesfully Logged Out!!    ACCEPT
       page should contain    Logout form
Exit Browser
    close browser


