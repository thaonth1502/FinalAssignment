*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary
Resource            ../Pages/Login.robot
Resource            ../Pages/Common.robot
Resource            ../Pages/AddNewCustomer.robot


*** Test Cases ***
TC Create New Customer
    [Documentation]    This is some info about test Create new Customer
    [Tags]    TC02
    [Setup]  Common.Open New Browser
    Login.Login with valid user and pass
    AddNewCustomer.Click On New Customer menu
    AddNewCustomer.Input value into some fields
    AddNewCustomer.Click button Submit
    AddNewCustomer.Verify information submit success
    Common.Click on Logout menu
    [Teardown]    Common.Exit Browser


