Feature: DEMPBLAZE Ecommerce Contact Validation

    Application regression

Scenario: Validate contact button is working
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I verify Contact buton is working

Scenario: Validate Name, Email and Message field is present
    Given I open the Ecommerce page and login
    Given I click the Contact button
    Then I verify Name, Email and Message field is present

Scenario: Validate unsuccessful submission of contact with blank Name, Email and Message
    Given I open the Ecommerce page and login
    When I click the Contact button
    When I click send message button
    Then I verify unsuccessful message submission

Scenario: Validate app not accepting invalid email format
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter invalid email format
    Then I verify app rejection of invalid email format

Scenario: Validate unsuccessful submission of contact with blank Name and data in Email and Message
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Email and Message
    When I click send message button
    Then I verify unsuccessful message submission

Scenario: Validate unsuccessful submission of contact with blank Email and data in Name and Message
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Name and Message
    When I click send message button
    Then I verify unsuccessful message submission

Scenario: Validate unsuccessful submission of contact with blank Message and data in Name and Email
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Name and Email
    When I click send message button
    Then I verify unsuccessful message submission

Scenario: Validate unsuccessful submission of contact with data in Name and blank Email and Message
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Name
    When I click send message button
    Then I verify unsuccessful message submission

Scenario: Validate unsuccessful submission of contact with data in Email and blank Name and Message
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Email
    When I click send message button
    Then I verify unsuccessful message submission

Scenario: Validate unsuccessful submission of contact with data in Message and blank Name and Email
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Message
    When I click send message button
    Then I verify unsuccessful message submission

Scenario: Verify app display unsuccessful message confirming message not sent
    Given I open the Ecommerce page and login
    When I click the Contact button
    When I click send message button
    Then I verify unsuccessful message submission

Scenario: Verify successful submission of Contact with data in Name, Email and Message
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Name, Email and Message
    When I click send message button
    Then I verify successful Contact submission

Scenario: Verify app display success message confirming message sent
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Name, Email and Message
    When I click send message button
    Then I verify successful Contact submission
    
Scenario: Validate Message have maximum allowed length
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Long Message
    Then I verify Message have maximum allowed length

Scenario: Validate Name have maximum allowed length
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Long Name
    Then I verify Name have maximum allowed length

Scenario: verify that app sanitizes the input and prevents any harm from message that contains HTML or other potentially malicious code
    Given I open the Ecommerce page and login
    When I click the Contact button
    Then I enter Long and Non text Message
    Then I verify app sanitizes the input and prevents any harm from message contains HTML or other potentially malicious code