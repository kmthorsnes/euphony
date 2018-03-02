Feature: Navbar
As a user
In order to navigate on the site
I would like to see a navbar with a home button

  Scenario: Display navbar and allow visitor to navigate back home 
    Given I visit the index page
    Then the "navbar" should be visible
    And I should see 'Concert tickets'
    And I should see 'Register'
    And I should see 'Log in'
    When I click "Euphony"
    Then I should be redirected to 'index' page
