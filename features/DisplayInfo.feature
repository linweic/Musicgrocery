Feature: Display Artist Information
 
  As a user
  so that I can view the details of an Artist
  I want a page which provides buttons corresponding to categories of information for that artist.

   Scenario: Display Biography
    Given I'm on the artist details page
    When I click on View Biography
    Then I should be able to see the artist biography

  Scenario: Display Album
    Given I'm on the artist details page
    When I click on View Album
    Then I should be able to see the artist top albums
  
  Scenario: Display Event
    Given I'm on the artist details page
    When I press View Event
    Then I should be able to see the artist past events
