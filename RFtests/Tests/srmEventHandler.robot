*** Settings ***
Documentation  srm web application common page object.
Resource  ../Resources/PageObjects/set.robot
Resource  ../Resources/PageObjects/srmLogin.robot
Resource  ../Resources/PageObjects/srmAddEvent.robot
Resource  ../Resources/PageObjects/srmLogout.robot
Test Setup  Start SRM session
Test Teardown  End SRM Session
Resource  ../Resources/PageObjects/set.robot
Resource  ../Resources/PageObjects/srmLogin.robot

*** Test Cases ***
As a User I need to be able to successfully create a New Event
    [Documentation]  Create New Event Sequence for the Strax Response Manager
    [Tags]  NewEvent

    srmLogin.Start SRM Login
    srmAddEvent.Create A New Event

