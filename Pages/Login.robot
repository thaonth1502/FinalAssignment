*** Settings ***
Library             SeleniumLibrary
Variables           Locators/loginPage.py


*** Keywords ***
Login with valid user and pass
    sleep                       1s
    wait until page contains    Guru99 Bank
    input text                  ${userID}    mngr582243
    input text                  ${password}   1234567008@
    sleep                       2s
    click element               ${btn_Login}
    wait until page contains        Manger Id : mngr582243
    sleep                       1s

