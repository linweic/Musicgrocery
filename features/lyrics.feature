Feature: View Lyrics

  As a user
  so that I can view the lyrics of a song 
  I want the list of songs page to give me a button that I can click to see the lyrics of the song

  Scenario: View the lyrics of a particular song
    Given I'm on the songs list page
    When I click on the lyrics button corresponding to a song
    Then I should be shown the lyrics of the song

