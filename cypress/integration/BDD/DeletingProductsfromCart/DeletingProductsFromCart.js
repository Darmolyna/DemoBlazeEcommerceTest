/// <reference types="Cypress" /> 
/// <reference types="cypress-iframe" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

    //@DeletingProductsFromCartTest1 
    //Scenario: Deleting a single product added from one category from cart while logged in
    Given ('I open the Ecommerce page and login', function(){
        cy.visit(Cypress.env("url"))
        cy.get('#login2').click()
        cy.wait(2000)
        cy.get('#loginusername').type(Cypress.env('Username'))
        cy.get('#loginpassword').type(Cypress.env('Password'))
        cy.get("button[onclick='logIn()']").click()
        cy.wait(3000)
    })
    When ('I click the PHONES CATEGORY button', function(){
        cy.get('.list-group a:nth-child(2)').click()
        cy.wait(2000)
    })
    Then ('i select a product from the list of products displayed from PHONES category', function(){
        cy.get('.hrefch').contains('Samsung galaxy s6').click()
    })
    When ('i click the add to cart button', function(){
        cy.get('.btn').contains('Add to cart').click()
    })
    Then ('i validate if the product name and number of product displayed in the cart is same as selected', 
    function(){
        cy.get('#cartur').click()
        cy.wait(3000)
        const num = 1
        var sum = 0
        cy.get('tr td:nth-child(2)').each(($el, index, $list) => { 
            const Productname = $el.text()
            cy.expect(Productname).to.equal('Samsung galaxy s6')
            cy.log(Productname) 
        })
        cy.get('tr th:nth-child(2)').each(($el, index, $list) => { 
            //const NumOfProduct = $el.text()
            sum = sum + 1

        }).then(function () { 
            cy.log(sum)
            cy.expect(sum).to.deep.equal(num)
        })               
    })
    When ('i validate if the price of product displayed is same as expected after adding product to cart',
    function(){
        var TotalNum = 0
        cy.get('tr td:nth-child(3)').each(($el, index, $list) => {
            const total = $el.text()
            var totalT = total.trim()
            TotalNum = Number(TotalNum) + Number(totalT) 
        }).then(function () {
            cy.log(TotalNum)
        })   
        cy.get('#totalp').then(function (element) { 
            const amount = element.text()
            expect(Number(amount)).to.equal(TotalNum)
        })
    })
    When ('i validate if the price of product displayed in cart is same as expected after clicking delete button each time', function(){
        cy.wait(6000)
        cy.get('#totalp').then(function (element) { 
            var Totalamount = element.text()
            cy.get('tr td:nth-child(3)').each(($el, index, $list) => {
                var price = $el.text()
                Totalamount = Number(Totalamount) - Number(price) 
                cy.get('tr td:nth-child(4)').contains('Delete').click()
                cy.wait(6000)
            }).then(function () {
                cy.log("Total amount after deletion is " + Totalamount)
            })
        })   
    })
    Then ('i validate if total price is empty after deleting all products added in cart', function(){
        cy.wait(6000)
        cy.get('#totalp').then(function (element) { 
            cy.expect(element.text()).to.equal("")
        })
    })
    Then ('i validate if cart is empty after deleting all products added in cart', function(){
        cy.get('tr').should('have.length', 1)
    })

    //@DeletingProductsFromCartTest2 
    //Scenario: Deleting a single product from one category from cart multiple times while logged in
    When ('I click the LAPTOPS CATEGORY button', function(){
        cy.get('.list-group a:nth-child(3)').click()
        cy.wait(2000)
    })
    Then ('i select a product from the list of products displayed from LAPTOPS category', function(){
        cy.get('.hrefch').contains('Sony vaio i5').click()
    })
    When ('i click the add to cart button 3 times', function(){
        var AddToCartArr = Array.from({length:3},(v,k)=>k+1)
        cy.wrap(AddToCartArr).each((index) => {
        cy.get('.col-sm-12 > .btn').click()
        })
    })
    Then ('i validate if the product names of products displayed in the cart is same as selected', 
    function(){
        cy.wait(2000)
        cy.get('#cartur').click()
        cy.wait(4000)
        cy.get('tr td:nth-child(2)').each(($el, index, $list) => { 
            const Productname3 = $el.text()
            cy.log(Productname3) 
        })
    })
    When ('i validate if the number of the products displayed in cart is 3 as selected', function(){
        const num = 3
        var sum = 0
        cy.wait(2000)
        cy.get('tr td:nth-child(2)').each(($el, index, $list) => { 
            sum = sum + 1

        }).then(function () { 
            cy.log(sum)
            cy.expect(sum).to.deep.equal(num)
        })
    })  
    //@DeletingProductsFromCartTest3 
    //Scenario: Deleting multiple products from different categories in cart while logged in
    When ('i navigate to LAPTOPS category', function(){
        cy.wait(4000)
        cy.get('.active > .nav-link').click()
        cy.wait(2000)
        cy.get('.list-group a:nth-child(3)').click()
        cy.wait(2000)
    })
    When ('i navigate to MONITORS category', function(){
        cy.get('.active > .nav-link').click()
        cy.wait(2000)
        cy.get('.list-group a:nth-child(4)').click()
        cy.wait(2000) 
    })
    Then ('i select a product from the list of products displayed from MONITORS category',
    function(){
        cy.get('.hrefch').contains('Apple monitor 24').click()
    })

    //@DeletingProductsFromCartTest4
    //Scenario: Deleting single product in cart from category and without category while logged in
    When ('i navigate and select a product without category', function(){
        cy.get('.active > .nav-link').click()
        cy.wait(2000)
        cy.get('.hrefch').contains('HTC One M9').click()
        cy.wait(2000)
    })
    When ('i validate if the number of the products displayed in cart is 2 as selected', function(){
        const num = 2
        var sum = 0
        cy.get('tr td:nth-child(2)').each(($el, index, $list) => { 
            sum = sum + 1

        }).then(function () { 
            cy.log(sum)
            cy.expect(sum).to.deep.equal(num)
        })   
    })

    //@DeletingProductsFromCartTest5
    //Scenario: Deleting multiple products in cart from category and without category while logged in
    When ('i navigate and select another product without category', function(){
        cy.get('.active > .nav-link').click()
        cy.wait(2000)
        cy.get('.hrefch').contains('Nokia lumia 1520').click()
        cy.wait(2000)
    })
    When ('i validate if the number of the products displayed in cart is 4 as selected', function(){
        const num = 4
        var sum = 0
        cy.get('tr td:nth-child(2)').each(($el, index, $list) => { 
            sum = sum + 1

        }).then(function () { 
            cy.log(sum)
            cy.expect(sum).to.deep.equal(num)
        }) 
    })

    //@DeletingProductsFromCartTest6
    //Scenario: Deleting single product in cart without category while logged in
    When ('i validate if the number of the products displayed in cart is 1 as selected', function(){
        const num = 1
            var sum = 0
            cy.get('tr td:nth-child(2)').each(($el, index, $list) => { 
                sum = sum + 1

            }).then(function () { 
                cy.log(sum)
                cy.expect(sum).to.deep.equal(num)
            }) 
    })

    //@DeletingProductsFromCartTest8
    //Scenario: Deleting a single product added from one category from cart while not logged in
    Given ('I open the Ecommerce page', function(){
        cy.visit(Cypress.env("url"))
        cy.wait(2000)
    })