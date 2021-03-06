 Feature: Add Favorites

  As a logged in user
  so that I can add my favorite artists 
  I want my search details page to give me a button that I can click to add my favorite artist

  Scenario: User is not logged in
    Given I'm on the search details page and I'm not logged in
    When I click on Add to Favorites!
    Then I should be prompted to login

  Scenario: User is logged in
    Given I'm on the search details page and I'm logged in
    | email                 | password|
    | abhimisra92@gmail.com | abhishek|
    When I press the button Add to Favorites!
    Then I should be able to see the add new favorite artist page



