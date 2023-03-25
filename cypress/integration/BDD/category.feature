Feature: Ecommerce category validation

    Application regression

    Scenario: Phones category validation while logged in
    Given I open the Ecommerce page and login
    When I click the PHONE CATEGORY button
    Then i verify product displayed are of only PHONES CATEGORY

    Scenario: Phones category validation while not logged in
    Given I open the Ecommerce page
    When I click the PHONE CATEGORY button
    Then i verify product displayed are of only PHONES CATEGORY

    Scenario: Laptops category validation while logged in
    Given I open the Ecommerce page and login
    When I click the LAPTOPS CATEGORY button
    Then i verify product displayed are of only LAPTOPS CATEGORY

    Scenario: Laptops category validation while not logged in
    Given I open the Ecommerce page
    When I click the LAPTOPS CATEGORY button
    Then i verify product displayed are of only LAPTOPS CATEGORY

    Scenario: Monitors category validation while logged in
    Given I open the Ecommerce page and login
    When I click the MONITORS CATEGORY button
    Then i verify product displayed are of only MONITORS CATEGORY

    Scenario: Monitors category validation while not logged in
    Given I open the Ecommerce page
    When I click the MONITORS CATEGORY button
    Then i verify product displayed are of only MONITORS CATEGORY
