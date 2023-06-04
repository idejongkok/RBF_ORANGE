*** Settings ***
Library        SeleniumLibrary
Variables      ../locators/login_locator.py

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
go to login page
    Open Browser    ${url}    chrome
    Set Selenium Implicit Wait    10
check text Login title
    Element Should Contain    ${loginText}    Login
check username textbox
    Element Should Be Enabled    ${usernameTextBox}
check password textbox
    Element Should Be Enabled    ${passwordTextBox}
check login button
    Element Should Be Enabled    ${loginButton}
check forgot password link
    Element Should Contain    ${forgotLink}    Forgot your password?

Input username
    [Arguments]    ${usr}
    Input Text    ${usernameInput}    ${usr}