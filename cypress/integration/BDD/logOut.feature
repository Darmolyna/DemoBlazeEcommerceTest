Feature: Ecommerce log out functionality test

    Application regression

@logOutTest1
    Scenario:  Verify log out after log in
    Given i navigate to demoBlaze Ecommerce url
    When i click the log in button
    Then i validate successful login
    When i click log out button
    Then i validate successful log out

@logOutTest2
    Scenario:  Verify that there is a logout button on current page
    Given i navigate to demoBlaze Ecommerce url
    When i click the log in button
    Then i validate successful login
    Then i validate logout button is visible on current page

#@logOutTest3
    #Scenario:  Verify confirmation message that user wants to logout

@logOutTest4
    Scenario:  Verify user is not able to access account by using browser back button after logging out
    Given i navigate to demoBlaze Ecommerce url
    When i click the log in button
    Then i validate successful login
    When i click log out button
    When I click the back button
    Then I validate account not accessible by using browser

#@logOutTest5
    #Scenario:  Validate confirmation message of successfull logout