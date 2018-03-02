Feature: Visitor can register
    As a visitor
    In order to use the application
    I would like to be able to register

    Background:
        Given I am on the index page
            | name  | email        | password    | password_confirmation |
            | oskar | oskar@quad.se | password123 | password123           |

    Scenario: Visitor can navigate to registration page
        When I click "Register"
        Then I should be redirected to "Registration" page

    Scenario: User can register
        When I fill in "Email" with "oskar@quad.se"
        And I fill in "Password" with "password123"
        And I fill in "password_confirmation" with "password123"
        And I click "Signup"
        Then I should be redirected to "index" page
        And I should see the message "Welcome! You have signed up Successfully"
