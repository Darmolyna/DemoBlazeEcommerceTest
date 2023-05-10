Feature: Ecommerce Signup validation

    Application regression

    @performance
    Scenario: Ecommerce sign up page is accessible
    Given I open Ecommerce page
    When I click the signup button

    Scenario: Ecommerce sign up test with new username and password
    Given I open Ecommerce page
    When I click the signup button
    When I enter valid signup details
    Then verify successfull signup

    Scenario: Ecommerce sign up test with existing username and password
    Given I open Ecommerce page
    When I click the signup button
    When I enter existing username and password
    Then verify unsuccessfull signup

    Scenario: Ecommerce sign up test with existing username and new password
    Given I open Ecommerce page
    When I click the signup button
    When I enter existing username and new password
    Then verify unsuccessfull signup

    Scenario: Ecommerce sign up test with new username existing password
    Given I open Ecommerce page
    When I click the signup button
    When I enter new username and existing password
    Then verify successfull signup

    Scenario: Verify that app display error message if user try to submit blank Signup details
    Given I open Ecommerce page
    When I click the signup button
    Then I click Signup button
    Then i verify error message Please fill out Username and Password.