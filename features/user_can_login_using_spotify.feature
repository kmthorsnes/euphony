Feature: user can log in using Spotify credentials
As a user of the Application
In order to simplify the sign in/ sign up process
I would like to be able to authenticate using my Spotify account

Scenario: Visitor clicks on 'Login with Spotify' and creates and account
  Given I visit the index page
  And I click "Log in using Spotify"
  Then I should be redirected to "index" page
  And I should see "Successfully authenticated from Spotify account"
