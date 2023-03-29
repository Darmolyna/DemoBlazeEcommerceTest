Feature: Ecommerce Product Selection And Adding Product To Cart validation

    Application regression
    @test1
Scenario: Adding single product to cart from one category while logged in
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i validate if the product name and number of product displayed in the cart is same as selected
    Then i validate if the price of product displayed in cart is same as expected
    Then i delete the product added in cart to empty the cart

    @test2
Scenario: Adding single product to cart multiple times to cart from one category while logged in
    Given I open the Ecommerce page and login
    When I click the LAPTOPS CATEGORY button
    Then Then i select a product from the list of products displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button 3 times and verify alert ~PRODUCT ADDED.~ each time
    Then i validate if the products displayed in the cart is same as the products i added to cart
    When i validate if the number of the products displayed in cart is 3 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all the 3 products added in cart to empty the cart

    @test3
Scenario: Adding multiple products to cart from different categories while logged in
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i navigate to LAPTOPS category
    Then Then i select a product from the list of products displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i navigate to MONITORS category
    Then i select a product from the list of products displayed from MONITORS category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of the products displayed in cart is 3 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all the 3 products added in cart to empty the cart  

    @test4
Scenario: Adding single product to cart from category and without category while logged in
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of the products displayed in cart is 2 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all 2 products added in cart to empty the cart 

    @test5
Scenario: Adding multiple products to cart from category and without category while logged in
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i navigate to LAPTOPS category
    Then Then i select a product from the list of products displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i navigate and select another product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of the products displayed in cart is 4 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all 4 products added in cart to empty the cart

    @test6
Scenario: Adding single product to cart without category while logged in
    Given I open the Ecommerce page and login
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of product displayed in cart is same as selected
    Then i validate if the price of product displayed in cart is same as expected
    Then i delete the product added in cart to empty the cart

    @test7
Scenario: Adding multipe products to cart without category while logged in
    Given I open the Ecommerce page and login
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i navigate and select another product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~.
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of the products displayed in cart is 2 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all 2 products added in cart to empty the cart

    @test8
Scenario: Adding single product to cart from one category while not logged in
    Given I open the Ecommerce page 
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i validate if the product name and number of product displayed in the cart is same as selected
    Then i validate if the price of product displayed in cart is same as expected
    Then i delete the product added in cart to empty the cart

    @test9
Scenario: Adding single product to cart multiple times to cart from one category while not logged in
    Given I open the Ecommerce page 
    When I click the LAPTOPS CATEGORY button
    Then Then i select a product from the list of products displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button 3 times and verify alert ~PRODUCT ADDED~ each time
    Then i validate if the products displayed in the cart is same as the products i added to cart
    When i validate if the number of the products displayed in cart is 3 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all the 3 products added in cart to empty the cart

    @test10
Scenario: Adding multiple products to cart from different categories while not logged in
     Given I open the Ecommerce page
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i navigate to LAPTOPS category
    Then Then i select a product from the list of products displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i navigate to MONITORS category
    Then i select a product from the list of products displayed from MONITORS category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of the products displayed in cart is 3 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all the 3 products added in cart to empty the cart 

    @test11
Scenario: Adding single product to cart from category and without category while not logged in
    Given I open the Ecommerce page
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of the products displayed in cart is 2 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all 2 products added in cart to empty the cart

    @test12
Scenario: Adding multiple products to cart from category and without category while not logged in
    Given I open the Ecommerce page 
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i navigate to LAPTOPS category
    Then Then i select a product from the list of products displayed from LAPTOPS category
    When i confirm if the product displayed is the same as the product i selected
    When i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i navigate and select another product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of the products displayed in cart is 4 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all 4 products added in cart to empty the cart

    @test13
Scenario: Adding single product to cart without category while not logged in
    Given I open the Ecommerce page
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of product displayed in cart is same as selected
    Then i validate if the price of product displayed in cart is same as expected
    Then i delete the product added in cart to empty the cart

    @test14
Scenario: Adding multipe products to cart without category while not logged in
    Given I open the Ecommerce page
    When i navigate and select a product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i navigate and select another product without category
    When i confirm if the product displayed is the same as the product i selected
    Then i click the add to cart button
    Then i verify alert ~PRODUCT ADDED~
    When i validate if the products displayed in the cart is same as the products i selected
    When i validate if the number of the products displayed in cart is 2 as selected
    Then i validate the total price of products displayed in cart is same as that of products selected
    Then i delete all 2 products added in cart to empty the cart