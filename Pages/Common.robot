*** Settings ***
Library             SeleniumLibrary
Variables           Locators/homePage.py


*** Keywords ***
Open New Browser
    open browser                https://www.demo.guru99.com/v4/index.php   chrome
    maximize browser window
    sleep    1s

Exit Browser
    close browser

Click on Logout menu
    click link    ${menu_logout}
    sleep    2s
    alert should be present    You Have Succesfully Logged Out!!    ACCEPT
    sleep    1s
    get title        Guru99 Bank Home Page