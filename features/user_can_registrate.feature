Feature: Visitor can register
    As a visitor
    In order to use the application
    I would like to be able to register

    Background:
        Given the following user exist
            | email         | password    | password_confirmation |
            | oskar@quad.se | password123 | password123           |
        Given I am on the index page
        When I click "Register"
        Then I should be redirected to "Registration" page

    Scenario: User can register
        When I fill in "Email" with "hellu@hotmale.com"
        And I fill in "Password" with "password123"
        And I fill in "Password confirmation" with "password123"
        And I click "Sign up"
        Then I should be redirected to 'index' page
        And I should see the message "Welcome! You have signed up successfully"

    
