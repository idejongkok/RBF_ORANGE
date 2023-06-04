*** Settings ***
Resource    ../steps/login_steps.robot

*** Test Cases ***
As a user I should be able to login with correct username and password
    Given I am on login page
    when I input username    admin
    # And I input password
    # And Click Login button
    # Then I should go to Dashboard Page

As a user I should not be able to login because username and password is empty

As a user I should not be able to login because username is wrong
    [Template]    As a user I should not be able to login because username is wrong

    salah      123
    admin    123
    salah    admin123


*** Keywords ***
As a user I should not be able to login because username is wrong
    [Arguments]    ${usr}    ${pwd}
    Given I am on login page
    when I input username    ${usr}
    # And I input password    ${pwd}
    # And Click Login button
    # Then I should go to Dashboard Page