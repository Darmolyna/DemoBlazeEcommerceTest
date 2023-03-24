/// <reference types="Cypress" /> 
/// <reference types="cypress-iframe" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

const num = 5

Given('I open Ecommerce page', function () { //you can use => if your function didnt have name
    //but mocha hooks does not support => operator 
    cy.visit(Cypress.env("url"))
})

When ('I click the login button', function(){
    cy.get('#login2').click()
})
When ('I enter valid login details', function(){
     //cy.get('#loginusername').type(this.data.Username)
     cy.get('#loginusername').type(Cypress.env('Username'))
     //cy.get('#loginpassword').type(this.data.Password)
     cy.get('#loginpassword').type(Cypress.env('Password'))
     cy.get("button[onclick='logIn()']").click()
})
Then ('verify successfull login', function(){
     //cy.get('#nameofuser').contains('Welcome ' + this.data.Username)
     cy.get('#nameofuser').should('contain.text', 'Welcome ' +  this.data.Username)
})

//Scenario: Ecommerce with invalid username and valid password
When ('I enter invalid username and valid password', function(){
    cy.get('#loginusername').type('Username'+ num)
    cy.get('#loginpassword').type(Cypress.env('Password'))
    cy.get("button[onclick='logIn()']").click()
})
Then ('verify unsuccessfull login message WRONG PASSWORD', function(){
    cy.on('window:alert', (str) => //fat pipe resolves Promise
     {
         expect(str).to.equal('Wrong password.')
     })
})

//Scenario: Ecommerce with valid username and invalid password
When ('I enter valid username and invalid password', function(){
    cy.get('#loginusername').type(Cypress.env('Username'))
    cy.get('#loginpassword').type('Password')
    cy.get("button[onclick='logIn()']").click()
})
Then ('verify unsuccessfull login message USER DOES NOT EXIST', function(){
    cy.on('window:alert', (str) => //fat pipe resolves Promise
     {
         expect(str).to.equal('User does not exist.')
     })
})
