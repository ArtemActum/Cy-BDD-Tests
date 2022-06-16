Feature: Login to Application

    As a invalid user
    I cannot log into application

    As a valid user
    I want to login into Application
@focus
    Scenario: Invalid Login
        Given I open login page
        #And I reload the browser
        #And I want to wait 2000 milliseconds
        #And I see "Zero" in the title
        When I fill username with "invalid username"
        And  I fill password with "invalid password"
        And I click on submit login
        Then I should see errror message

    Scenario: Valid Login
        Given I open login page
        When I fill username with "username"
        And  I fill password with "password"
        And I click on submit login
        Then I should see homepage
