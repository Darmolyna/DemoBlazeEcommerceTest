Feature: Ecommerce login validation

    Application regression

    @performance
    Scenario: Verify that the login page is accessible
    Given I open Ecommerce page
    When I click the login button
    Then Verify that the login page is displayed
    
    Scenario: Verify successful login with valid username and password 
    Given I open Ecommerce page
    When I click the login button
    When I enter valid login details
    Then verify successfull login

    Scenario: Verify unsuccessful login with blank username and password
    Given I open Ecommerce page
    When I click the login button
    Then i click login
    Then verify unsuccessfull login message -Please fill out Username and Password.-

    Scenario: Verify unsuccessful login with valid username and blank password
    Given I open Ecommerce page
    When I click the login button
    When I enter valid username
    Then i click login
    Then verify unsuccessfull login message -Please fill out Username and Password.-

    Scenario: Verify unsuccessful login with blank username and valid password
    Given I open Ecommerce page
    When I click the login button
    When I enter valid password
    Then i click login
    Then verify unsuccessfull login message -Please fill out Username and Password.-

    Scenario: Verify unsuccessful login with invalid username and blank password
    Given I open Ecommerce page
    When I click the login button
    When I enter invalid username
    Then i click login
    Then verify unsuccessfull login message -Please fill out Username and Password.-

    Scenario: Verify unsuccessful login with blank username and invalid password
    Given I open Ecommerce page
    When I click the login button
    When I enter invalid password
    Then i click login
    Then verify unsuccessfull login message -Please fill out Username and Password.-

    Scenario: Verify unsuccessful login with invalid username and valid password
    Given I open Ecommerce page
    When I click the login button
    When I enter invalid username and valid password
    Then verify unsuccessfull login message WRONG PASSWORD

    Scenario: Verify unsuccessfull login with valid username and invalid password
    Given I open Ecommerce page
    When I click the login button
    When I enter valid username and invalid password
    Then verify unsuccessfull login message USER DOES NOT EXIST