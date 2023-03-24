Feature: Ecommerce login validation

    Application regression

    @performance
    Scenario: Ecommerce with valid username and password 
    Given I open Ecommerce page
    When I click the login button
    When I enter valid login details
    Then verify successfull login

    Scenario: Ecommerce with invalid username and valid password
    Given I open Ecommerce page
    When I click the login button
    When I enter invalid username and valid password
    Then verify unsuccessfull login message WRONG PASSWORD

    Scenario: Ecommerce with valid username and invalid password
    Given I open Ecommerce page
    When I click the login button
    When I enter valid username and invalid password
    Then verify unsuccessfull login message USER DOES NOT EXIST