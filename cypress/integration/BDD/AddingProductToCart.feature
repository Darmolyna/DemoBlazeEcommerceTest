Feature: Ecommerce Product Selection And Adding Product To Cart validation

    Application regression

    Scenario: Adding single product to cart from one category while logged in
    Given I open the Ecommerce page and login
    When I click the PHONE CATEGORY button
    Then i select a product from the list of Items displayed from phone category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i verify alert Product Added.
    When i validate if the product name and number of product displayed in the cart is same as selected
    Then i validate if the price of product displayed in cart is same as expected

    Scenario: Adding single product to cart multiple times to cart from one category while logged in
    Given I open the Ecommerce page and login
    When I click the PHONE CATEGORY button
    Then i select a product from the list of Items displayed from phone category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button 3 times
    Then i validate if the product displayed in the cart is same as the product i selected
    When i validate if the number of the products displayed in cart is same as selected
    Then i validate if total price of product displayed in cart is same as expected

    Scenario: Adding multiple products to cart from different categories while logged in
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of Items displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i navigate to LAPTOPS category
    Then i select a product from the list of Items displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i navigate to MONITORS category
    Then i select a product from the list of Items displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the products displayed in the cart is same as the products i selected
    Then i validate the total price of products displayed in cart is same as that of products selected

    Scenario: Adding single product to cart from category and without category while logged in
    Given I open the Ecommerce page and login
    When I click the PHONE CATEGORY button
    Then i select a product from the list of Items displayed from phone category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the products displayed in the cart is same as the products i selected
    Then i validate the total price of products displayed in cart is same as expected

    Scenario: Adding multiple products to cart from category and without category while logged in
    Given I open the Ecommerce page and login
    When I click the PHONE CATEGORY button
    Then i select a product from the list of Items displayed from phone category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
     When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When I click the LAPTOPS CATEGORY button
    Then i select a product from the list of Items displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    When i navigate and select another product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the products displayed in the cart is same as the products i selected
    Then i validate the total price of products displayed in cart is same as expected

    Scenario: Adding single product to cart without category while logged in
    Given I open the Ecommerce page and login
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the product displayed in the cart is same as the product i selected
    Then i validate the total price of product displayed in cart is same as expected

    Scenario: Adding multipe products to cart without category while logged in
    Given I open the Ecommerce page and login
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i navigate and select another product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the product displayed in the cart is same as the product i selected
    Then i validate the total price of product displayed in cart is same as expected

    Scenario: Adding single product to cart from one category while not logged in
    Given I open the Ecommerce page
    When I click the PHONE CATEGORY button
    Then i select a product from the list of Items displayed from phone category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i validate if the product displayed in the cart is same as the product i selected
    Then i validate if the price of product displayed in cart is same as expected

    Scenario: Adding single product to cart multiple times to cart from one category while not logged in
    Given I open the Ecommerce page
    When I click the PHONE CATEGORY button
    Then i select a product from the list of Items displayed from phone category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button 3 times
    Then i validate if the product displayed in the cart is same as the product i selected
    When i validate if the number of the products displayed in cart is same as selected
    Then i validate if total price of product displayed in cart is same as expected

    Scenario: Adding multiple products to cart from different categories while not logged in
    Given I open the Ecommerce page
    When I click the PHONES CATEGORY button
    Then i select a product from the list of Items displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i navigate to LAPTOPS category
    Then i select a product from the list of Items displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i navigate to MONITORS category
    Then i select a product from the list of Items displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the products displayed in the cart is same as the products i selected
    Then i validate the total price of products displayed in cart is same as that of products selected

    Scenario: Adding single product to cart from category and without category while not logged in
    Given I open the Ecommerce page
    When I click the PHONE CATEGORY button
    Then i select a product from the list of Items displayed from phone category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the products displayed in the cart is same as the products i selected
    Then i validate the total price of products displayed in cart is same as expected

    Scenario: Adding multiple products to cart from category and without category while not logged in
    Given I open the Ecommerce page
    When I click the PHONE CATEGORY button
    Then i select a product from the list of Items displayed from phone category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
     When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When I click the LAPTOPS CATEGORY button
    Then i select a product from the list of Items displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    When i navigate and select another product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the products displayed in the cart is same as the products i selected
    Then i validate the total price of products displayed in cart is same as expected

    Scenario: Adding single product to cart without category while not logged in
    Given I open the Ecommerce page
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the product displayed in the cart is same as the product i selected
    Then i validate the total price of product displayed in cart is same as expected

    Scenario: Adding multipe products to cart without category while not logged in
    Given I open the Ecommerce page
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i navigate and select another product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    When i validate if the product displayed in the cart is same as the product i selected
    Then i validate the total price of product displayed in cart is same as expected