Feature: Index page
  As a user
  In order to listen to music which fits my mood
  I want to be able to use a search field to search for music

  Scenario: User visit index page
    Given I visit the index page
    Then I should see 'How are you feeling today?'
    And I should see 'a music theme generator'
