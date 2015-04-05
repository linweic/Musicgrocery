Feature: Basic Homepage operations
 
  As a user
  so that I can sign up, login or search for an artist
  I want the homepage to display these options

  Scenario: Login
    Given I'm on the home page
    When I submit the login form
    Then I should be able to see the login successful page
  
  Scenario: create
    Given I'm on the home page
    When I click on sign up
    Then I should be able to see the new user page

   Scenario: search
    Given I'm on the home page
    When I search for an artist
    Then I should be able to see the artist details page



