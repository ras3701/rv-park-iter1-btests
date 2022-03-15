#Feature: Admin Dashboard Page - Modify Home Page Contents.
#
#Background: Admin is already logged in
#    Given I am on login page
#    When I submit a valid login credential
#      And I select the Edit Home Page Contents option on admin dashboard
#    Then I am redirected to the Edit Home Page Contents page
#
#Scenario: As an admin, I should be able to see the current values for each field when upon selecting "Edit Home Page Contents"
#    Given I am on the Edit Home Page Contents Page
#    When I do not modify any field
#    Then the text for each field should match the default or current value
#
#Scenario: As an admin, I should be able to modify the About Us Header field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the About Us Header field
#     And hit the submit button
#    Then the text for About Us Header field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the About Us Body field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the About Us Body field
#     And hit the submit button
#    Then the text for About Us Body field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Amenities Header field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Amenities Header field
#     And hit the submit button
#    Then the text for Amenities Header field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Amenities Body field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Amenities Body field
#     And hit the submit button
#    Then the text for Amenities Body field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Phone Number field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Phone Number field with a valid value
#     And hit the submit button
#    Then the text for Phone Number field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should not be able to modify the Phone Number field if I enter an invalid value
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Phone Number field with an invalid value
#     And hit the submit button
#    Then the text for Phone Number field should not change
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Email address field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Email address field with a valid value
#     And hit the submit button
#    Then the text for Email address field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should not be able to modify the Email address field if I enter an invalid value
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Email address field with an invalid value
#     And hit the submit button
#    Then the text for Email address field should not change
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Location field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Location field
#     And hit the submit button
#    Then the text for Location field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Carousel 1 Header field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel 1 Header field
#     And hit the submit button
#    Then the text for Carousel 1 Header field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Carousel 1 Contents field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel 1 Contents field
#     And hit the submit button
#    Then the text for Carousel 1 Contents field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Carousel 1 Image field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel 1 Image field with a valid file
#     And hit the submit button
#    Then the content for Carousel 1 Image field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Carousel 2 Header field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel 2 Header field
#     And hit the submit button
#    Then the text for Carousel 2 Header field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Carousel 2 Contents field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel 2 Contents field
#     And hit the submit button
#    Then the text for Carousel 2 Contents field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Carousel 2 Image field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel 2 Image field with a valid file
#     And hit the submit button
#    Then the content for Carousel 2 Image field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Carousel 3 Header field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel 3 Header field
#     And hit the submit button
#    Then the text for Carousel 3 Header field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Carousel 3 Contents field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel 3 Contents field
#     And hit the submit button
#    Then the text for Carousel 3 Contents field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be able to modify the Carousel 3 Image field
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel 3 Image field with a valid file
#     And hit the submit button
#    Then the content for Carousel 3 Image field should match the modified value
#     And the values for other fields should not change
#
#Scenario: As an admin, I should not be able to modify the Carousal Image field if I provide an incorrect file format
#    Given I am on the Edit Home Page Contents Page
#    When I modify the Carousel Image field with an invalid file format
#     And hit the submit button
#    Then the content for Carousel Image field should not be updated
#     And the values for other fields should not change
#
#Scenario: As an admin, I should be modify all fields together
#    Given I am on the Edit Home Page Contents Page
#    When I modify all the fields with valid inputs
#     And hit the submit button
#    Then the text for all fields should match the modified values
#
