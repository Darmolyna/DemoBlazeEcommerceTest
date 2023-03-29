Feature: Ecommerce log out functionality test

    Application regression

@logOutTest1
    Scenario:  log out after log in
    Given i navigate to demoBlaze Ecommerce url
    When i click the log in button
    Then i validate successful login
    When i click log out button
    Then i validate successful log out