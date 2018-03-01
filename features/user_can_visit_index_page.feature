Feature: Index page
  As a user
  In order to visit the site
  I want to be able to visit a landing page

  Scenario: User visit index page
    Given I visit the index page
    Then I should see 'Euphony'
    And I should see 'a music theme generator'
    And I should see 'How are you feeling today?'
    Then I click the button 'Happy'
    And I should see 'Enter a song you like to listen to when you feel this way'
    Then I should fill in 'search' with 'Oxford comma'
    Then I click the button 'Search'
