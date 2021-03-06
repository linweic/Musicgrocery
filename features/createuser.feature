Feature: Signup Page operations

  As a user
  so that I can create a new account
  I want the signup page to display fields that I can enter email and password

  Scenario: create successfully
    Given I'm on the sign up page
    When I enter the email, password and confirm password correctly
    Then I should be able to see the sign up successful page

  Scenario: email is blank
    Given I'm on the sign up page
    When I leave the email field blank
    Then I should be able to see an email blank message in the same page

  Scenario: password is blank
    Given I'm on the sign up page
    When I leave the password field blank
    Then I should be able to see a password blank message in the same page

  Scenario: confirm is blank
    Given I'm on the sign up page
    When I leave the confirm field blank
    Then I should be able to see an confirm blank message in the same page

  Scenario: password & confirm mismatch
    Given I'm on the sign up page
    When the content I entered in password field is not same as conform field
    Then I should be able to see a mismatch message in the same page
