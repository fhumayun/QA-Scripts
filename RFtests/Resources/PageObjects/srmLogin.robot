*** Settings ***
Documentation  srm domain specific keyword definitions
Library  ExtendedSelenium2Library
Resource  ./Resources/PageObjects/set.robot

*** Keywords ***
Start SRM Login
    Given a User loads the SRM Page
    When User Supplies Valid Credentials
    Then Verify Active Event Page gets Loaded

Given a User loads the SRM Page
    [Documentation]  Loading SRM page
    And the SRM page loads successfully
    And the SRM URL is correct

And the SRM page loads successfully
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${srm.page_loaded_text}

And the SRM URL is correct
    [Documentation]  Verify that current page URL matches the expected URL.
    Location Should Contain  ${srm.page_url}

When User Supplies Valid Credentials
    [Documentation]  Emulating User Login
    And Email Field is set correctly
    And Password Field is set correctly
    And Login Button is Clicked

And Email Field is set correctly
    [Documentation]  Set value to Email Email field.
    Input Text  ${srm.email}  fhumayun@eagleeye.io

And Password Field is set correctly
    [Documentation]  Set value to Password Password field.
    Input Text  ${srm.password}  careteam

And Login Button is Clicked
    [Documentation]  Click on Login Button.
    Click Button  ${srm.login}

Then Verify Active Event Page gets Loaded
    [Documentation]  Verify that the page loaded completely.
    Wait Until Page Contains  ${srm.page_loaded_text}
