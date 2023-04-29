Feature: Ecommerce Product Deletion From Cart validation

    Application regression

@DeletingProductsFromCartTest1
    Scenario: Deleting a single product added from one category from cart while logged in
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    Then i validate if the product name and number of product displayed in the cart is same as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest2
    Scenario: Deleting a single product from one category from cart multiple times while logged in
    Given I open the Ecommerce page and login
    When I click the LAPTOPS CATEGORY button
    Then i select a product from the list of products displayed from LAPTOPS category
    When i click the add to cart button 3 times
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 3 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest3
    Scenario: Deleting multiple products from different categories in cart while logged in
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    When i navigate to LAPTOPS category
    Then i select a product from the list of products displayed from LAPTOPS category
    Then i click the add to cart button
    When i navigate to MONITORS category
    Then i select a product from the list of products displayed from MONITORS category
    Then i click the add to cart button
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 3 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest4
    Scenario: Deleting single product in cart from category and without category while logged in
    Given I open the Ecommerce page and login
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    When i navigate and select a product without category
    Then i click the add to cart button
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 2 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest5
    Scenario: Deleting multiple products in cart from category and without category while logged in
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
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 4 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest6
    Scenario: Deleting single product added without category in cart while logged in
    Given I open the Ecommerce page and login
    When i navigate and select a product without category
    Then i click the add to cart button
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 1 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest7
Scenario: Deleting multipe products added without category in cart while logged in
    Given I open the Ecommerce page and login
    When i navigate and select a product without category
    Then i click the add to cart button
    When i navigate and select another product without category
    Then i click the add to cart button
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 2 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest8
    Scenario: Deleting a single product added from one category from cart while not logged in
    Given I open the Ecommerce page
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    Then i validate if the product name and number of product displayed in the cart is same as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest9
    Scenario: Deleting a single product from one category from cart multiple times while not logged in
    Given I open the Ecommerce page
    When I click the LAPTOPS CATEGORY button
    Then i select a product from the list of products displayed from LAPTOPS category
    When i click the add to cart button 3 times
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 3 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest10
    Scenario: Deleting multiple products from different categories in cart while not logged in
    Given I open the Ecommerce page
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    When i navigate to LAPTOPS category
    Then i select a product from the list of products displayed from LAPTOPS category
    Then i click the add to cart button
    When i navigate to MONITORS category
    Then i select a product from the list of products displayed from MONITORS category
    Then i click the add to cart button
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 3 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest11
    Scenario: Deleting single product in cart from category and without category while not logged in
    Given I open the Ecommerce page
    When I click the PHONES CATEGORY button
    Then i select a product from the list of products displayed from PHONES category
    When i click the add to cart button
    When i navigate and select a product without category
    Then i click the add to cart button
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 2 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest12
    Scenario: Deleting multiple products in cart from category and without category while not logged in
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
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 4 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest13
    Scenario: Deleting single product added without category in cart while not logged in
    Given I open the Ecommerce page
    When i navigate and select a product without category
    Then i click the add to cart button
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 1 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart

@DeletingProductsFromCartTest14
Scenario: Deleting multipe products added without category in cart while not logged in
    Given I open the Ecommerce page
    When i navigate and select a product without category
    Then i click the add to cart button
    When i navigate and select another product without category
    Then i click the add to cart button
    Then i validate if the product names of products displayed in the cart is same as selected
    When i validate if the number of the products displayed in cart is 2 as selected
    When i validate if the price of product displayed is same as expected after adding product to cart
    When i validate if the price of product displayed in cart is same as expected after clicking delete button each time
    Then i validate if total price is empty after deleting all products added in cart
    Then i validate if cart is empty after deleting all products added in cart