/// <reference types="Cypress" /> 
/// <reference types="cypress-iframe" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

//Scenario: Ecommerce sign up test with new username and password 
Given('I open Ecommerce page', function () {
    cy.visit(Cypress.env("url"))
})

When ('I click the signup button', function(){
    cy.get('#signin2').click()
    cy.wait(2000)
})
When ('I enter valid signup details', function(){
     cy.get('#sign-username').type('Username' + Cypress._.random(0, 1e6))
     cy.get('#sign-password').type('Password')
     cy.get('.modal-footer button[onclick="register()"]').click()
})
Then ('verify successfull signup', function(){
     cy.on('window:alert', (str) => //fat pipe resolves Promise
     {
         //Mocha
         expect(str).to.equal('Sign up successful.')
     })
     //cy.get('button').click()
})

//Scenario: Ecommerce sign up test with existing username and password
    When ('I enter existing username and password', function(){
        cy.get('#sign-username').type(Cypress.env('Username'))
        cy.get('#sign-password').type(Cypress.env('Password'))
        cy.get('.modal-footer button[onclick="register()"]').click()
    })

    Then ('verify unsuccessfull signup', function(){
        cy.on('window:alert', (str) => //fat pipe resolves Promise
        {
            expect(str).to.equal('This user already exist.')
        })
    })

//Scenario: Ecommerce sign up test with existing username and new password
    When ('I enter existing username and new password', function(){
         cy.get('#sign-username').type(Cypress.env('Username'))
         cy.get('#sign-password').type('Password')
         cy.get('.modal-footer button[onclick="register()"]').click()
    })

//Scenario: Ecommerce sign up test with new username existing password
    When ('I enter new username and existing password', function(){
         cy.get('#sign-username').type('Username' + Cypress._.random(0, 1e6))
         cy.get('#sign-password').type(Cypress.env('Password'))
         cy.get('.modal-footer button[onclick="register()"]').click()
    })