*** Settings ***
Library             SeleniumLibrary
Variables           Locators/addNewCustomer.py
Variables           Locators/homePage.py
Variables           Locators/loginPage.py


*** Keywords ***
Click On New Customer menu
    click link              ${menu_NewCustomer}
    sleep    1s
    page should contain     Add New Customer
    sleep    1s
Input value into some fields
    input text      ${customerName}     thaonth
    sleep    1s
    select radio button    ${gender}    f
    sleep    1s
    input text      ${dateOfBirth}      15021989
    sleep    1s
    input text      ${address}          Ha noi
    sleep    1s
    input text      ${city}             Ha noi
    sleep    1s
    input text      ${state}            Cau Giay
    sleep    1s
    input text      ${pin}              100000
    sleep    1s
    input text      ${mobilenumber}     098765432
    sleep    1s
    input text      ${email}            huongthao100@gmail.com
    sleep    1s
    input password      ${password}     12345678@
    sleep    1s

Click button Submit
    click element    ${btn_submit}
    sleep    2s

Verify information submit success
    page should contain    Customer Registered Successfully!!!
    sleep    1s








