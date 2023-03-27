/// <reference types="Cypress" /> 
/// <reference types="cypress-iframe" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

//Scenario: Adding single product to cart from one category while logged in
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
When ('i confirm if the product displayed is same as from PHONES CATEGORY', function(){
    cy.get('#tbodyid .name').should('have.text', 'Samsung galaxy s6')
})
When ('i click the add to cart button', function(){
    cy.get('.btn').contains('Add to cart').click()
})
Then ('i verify alert ~PRODUCT ADDED~.', function(){
    cy.on('window:alert', (str) =>
     {
         expect(str).to.equal('Product added.')
     })
})
When ('i validate if the product name and number of product displayed in the cart is same as selected', 
function()
{
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
Then ('i validate if the price of product displayed in cart is same as expected',
 function()
 {
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
Then ('i delete the product added in cart to empty the cart', function(){
    cy.get('tr td:nth-child(4)').contains('Delete').click()
    cy.wait(6000)
})

//Scenario: Adding single product to cart multiple times to cart from one category while logged in
When ('I click the LAPTOPS CATEGORY button', function(){
    cy.get('.list-group a:nth-child(3)').click()
    cy.wait(2000)
})
Then ('Then i select a product from the list of products displayed from LAPTOPS category', function(){
    cy.get('.hrefch').contains('Sony vaio i5').click()
})
When ('i confirm if the product displayed is same as from LAPTOPS CATEGORY', function(){
    cy.get('#tbodyid .name').should('have.text', 'Sony vaio i5')
})
When ('i click the add to cart button 3 times and verify alert ~PRODUCT ADDED~ each time', function()
 { 
    var AddToCartArr = Array.from({length:3},(v,k)=>k+1)
    cy.wrap(AddToCartArr).each((index) => {
        cy.get('.col-sm-12 > .btn').click()
        cy.on('window:alert', (str) =>{
            expect(str).to.equal('Product added.')
        })
    })
})
Then ('i validate if the products displayed in the cart is same as the products i added to cart',
 function()
 {
    cy.wait(2000)
    cy.get('#cartur').click()
    cy.wait(4000)
    cy.get('tr td:nth-child(2)').each(($el, index, $list) => { 
        const Productname2 = $el.text()
        cy.expect(Productname2).to.equal('Sony vaio i5')
        cy.log(Productname2) 
    })
})
When ('i validate if the number of the products displayed in cart is same as selected', function(){
    const num = 3
    var sum = 0
    cy.get('tr td:nth-child(2)').each(($el, index, $list) => { 
        sum = sum + 1

    }).then(function () { 
        cy.log(sum)
        cy.expect(sum).to.deep.equal(num)
    })   
})
Then ('i validate if total price of product displayed in cart is same as expected', function(){
    var TotalNum = 0
    cy.get('tr td:nth-child(3)').each(($el, index, $list) => {
        const total = $el.text()
        var productTotal = total.trim()
        TotalNum = Number(TotalNum) + Number(productTotal) 
    }).then(function () {
        cy.log(TotalNum)
    })   
    cy.get('#totalp').then(function (element) { 
        const TotalAmount = element.text()
        expect(Number(TotalAmount)).to.equal(TotalNum)
    })
})
Then ('i delete all the products added in cart to empty the cart', function(){
    var ProdDelArray = Array.from({length:3},(v,k)=>k+1)
    cy.wrap(ProdDelArray).each((index) => {
        cy.get('tr td:nth-child(4)').contains('Delete').click()
        cy.wait(6000)
    })
})

//Scenario: Adding multiple products to cart from different categories while logged in
When ('i navigate to LAPTOPS category', function(){
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
Then ('i select a product from the list of products displayed from MONITORS category', function(){
    cy.get('.hrefch').contains('Apple monitor 24').click()
})
When ('i confirm if the product displayed is same as from MONITORS CATEGORY', function(){
    cy.get('#tbodyid .name').should('have.text', 'Apple monitor 24')
})
When ('i validate if the products displayed in the cart is same as the products i selected', function(){
    cy.wait(2000)
    cy.get('#cartur').click()
    cy.wait(4000)
    cy.get('tr td:nth-child(2)').each(($el, index, $list) => { 
        const Productname3 = $el.text()
        cy.log(Productname3) 
    })
})
Then ('i validate the total price of products displayed in cart is same as that of products selected',
 function(){
    var TotalNum = 0
    cy.get('tr td:nth-child(3)').each(($el, index, $list) => {
        const total = $el.text()
        var productTotal = total.trim()
        TotalNum = Number(TotalNum) + Number(productTotal) 
    }).then(function () {
        cy.log(TotalNum)
    })   
    cy.get('#totalp').then(function (element) { 
        const TotalAmount = element.text()
        expect(Number(TotalAmount)).to.equal(TotalNum)
    })
})

//npx cypress run --env tags="@test1" --headed --browser chrome
//still test for if product appear in the same order
//and deleting product in cart