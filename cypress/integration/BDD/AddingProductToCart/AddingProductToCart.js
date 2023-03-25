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
    cy.wait(2000)
})
When ('I click the PHONE CATEGORY button', function(){
    cy.get('.list-group a:nth-child(2)').click()
    cy.wait(2000)
})
Then ('i select a product from the list of Items displayed from phone category', function(){
    cy.get('.hrefch').contains('Samsung galaxy s6').click()
})
When ('i confirm if the product displayed is the same as the product i selected', function(){
    cy.get('#tbodyid .name').should('have.text', 'Samsung galaxy s6')
})
When ('i click the add to cart button', function(){
    cy.get('[onclick="addToCart(1)"]').contains('Add to cart').click()
})
Then ('i verify alert Product Added.', function(){
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
    cy.get('tr th:nth-child(2)').each(($el, index, $list) => { 
        const Productname = $el.text()
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


//still test for if product appear in the same order
//and deleting product in cart