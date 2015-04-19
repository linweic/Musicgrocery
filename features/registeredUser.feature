Feature: User operations page

  As a logged in user
  so that I can search for an artist and edit my profile
  I want my dashboard to have the functionality to allow me to perform these operations

  Scenario: Edit Profile
    Given signin page 
    And I login successfully
    | email                 | password|
    | abhimisra92@gmail.com | abhishek|
    
    When I click on edit profile
    Then I should see the edit profile page

  Scenario: Logout
    Given signin page
    And I login successfully
    | email                 | password|
    | abhimisra92@gmail.com | abhishek|
    When I click on logout
    Then I should sign out successfully and go back to the home page
