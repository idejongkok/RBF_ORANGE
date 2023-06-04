*** Settings ***
Resource    ../resources/page_object/login_pom.robot

*** Keywords ***
I am on login page
    go to login page
    check text Login title
    check username textbox
    check password textbox
    check login button
    check forgot password link
I input username
    [Arguments]    ${usr}
    Input username    ${usr}
# I input password
# Click Login button
# I should go to Dashboard Page
