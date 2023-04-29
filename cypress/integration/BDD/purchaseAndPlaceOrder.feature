Feature: Ecommerce Purchase and Place order validation

    Application regression

@pp1
    Scenario: purchasing order for multiple products in cart from category and without category while login
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    When i navigate and select a product without category
    Then i click the add to cart button
    When i navigate to LAPTOPS category
    Then i select a product from the list of products displayed from LAPTOPS category
    Then i click the add to cart button
    When i navigate and select another product without category
    Then i click the add to cart button
    When i navigate to cart
    When i click Place Order button
    Then if total price is displayed as expected
    Then i fill out form to Place order
    When i click the Purchase button
    Then i validate successfull purchase
    When i validate amount, card number, name and date
    Then i validate if the cart is empty

@pp2
    Scenario: purchasing order for multiple products in cart from category and without category while not login
    Given I open the Ecommerce page
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    When i navigate and select a product without category
    Then i click the add to cart button
    When i navigate to LAPTOPS category
    Then i select a product from the list of products displayed from LAPTOPS category
    Then i click the add to cart button
    When i navigate and select another product without category
    Then i click the add to cart button
    When i navigate to cart
    When i click Place Order button
    Then if total price is displayed as expected
    Then i fill out form to Place order
    When i click the Purchase button
    Then i validate successfull purchase
    When i validate amount, card number, name and date
    Then i validate if the cart is empty

@pp3
    Scenario: validating unsuccessful purchase if ~name~ and ~card number~ is ommited while logged in
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    When i navigate and select a product without category
    Then i click the add to cart button
    When i navigate to LAPTOPS category
    Then i select a product from the list of products displayed from LAPTOPS category
    Then i click the add to cart button
    When i navigate and select another product without category
    Then i click the add to cart button
    When i navigate to cart
    When i click Place Order button
    Then if total price is displayed as expected
    Then i fill out form without ~name~ and ~card number~ to Place order
    When i click the Purchase button
    Then i validate un successfull purchase

@pp4
    Scenario: validating unsuccessful purchase if ~name~ and ~card number~ is ommited while not logged in
    Given I open the Ecommerce page
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    When i navigate and select a product without category
    Then i click the add to cart button
    When i navigate to LAPTOPS category
    Then i select a product from the list of products displayed from LAPTOPS category
    Then i click the add to cart button
    When i navigate and select another product without category
    Then i click the add to cart button
    When i navigate to cart
    When i click Place Order button
    Then if total price is displayed as expected
    Then i fill out form without ~name~ and ~card number~ to Place order
    When i click the Purchase button
    Then i validate un successfull purchase