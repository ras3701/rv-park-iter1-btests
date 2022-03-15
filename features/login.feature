Feature: Login Form
  Scenario: Access the login form

    Given I am on login page
    When I submit a valid login credential
    Then I am redirected to the login page success page

    Given I am on login page
    When I submit an invalid login credential
    Then I am redirected to login page fail page
