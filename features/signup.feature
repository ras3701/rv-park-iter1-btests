Feature: Signup Page
  
  Scenario: User enters all the fields correctly on the signup page and is able to create an account.
    Given I am on signup page
    When I submit a valid username and password
    Then I am logged in and am redirected to the dashboard page

   Scenario: User enters an incorrect value for username on the signup page and is unable to create an account.
    Given I am on signup page
    When I submit an invalid username and a valid password
    Then I see an error message and I am on the signup page
   
   Scenario: User enters an incorrect value for incorrect passwords on the signup page and is unable to create an account.
    Given I am on the signup page
    When I submit a valid username and incorrect passwords
    Then I see an error message and I am on the signup page

   Scenario: User enters an invalid password on the signup page and is unable to create an account.
    Given I am on the signup page
    When I submit a valid username and an invalid password
    Then I see an error message and I am on the signup page

   Scenario: User leaves the username field empty on the signup page and is unable to create an account.
    Given I am on the signup page
    When I leave the username field empty and submit a valid password
    Then I see an error message and I am on the signup page

   Scenario: User leaves one or both the password fields empty on the signup page and is unable to create an account.
    Given I am on the signup page
    When I leave one or both the password fields empty and submit a valid username
    Then I see an error message and I am on the signup page

   
