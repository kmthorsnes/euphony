Feature: Index page
  As a user
  In order to visit the site
  I want to be able to visit a landing page

  Scenario: User visit landing page
    Given I visit the index page
    Then I should see 'Euphony'
    And I should 'a music theme generator'
