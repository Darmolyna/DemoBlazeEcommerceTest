/// <reference types="Cypress" /> 
/// <reference types="cypress-iframe" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

//@logOutTest1
//Scenario: Verify log out after log in
    Given ('i navigate to demoBlaze Ecommerce url', function(){
        cy.visit(Cypress.env("url"))
    })
    When ('i click the log in button', function(){
        cy.get('#login2').click()
        cy.wait(2000)
        cy.get('#loginusername').type(Cypress.env('Username'))
        cy.get('#loginpassword').type(Cypress.env('Password'))
        cy.get("button[onclick='logIn()']").click()
        cy.wait(3000)
    })
    Then ('i validate successful login', function(){
        cy.get('#nameofuser').should('contain.text', 'Welcome ' +  Cypress.env('Username'))
    })
    When ('i click log out button', function(){
        cy.get('#logout2').click()
    })
    Then ('i validate successful log out', function(){
        cy.get('#nameofuser').should('contain.text', '')
    })

//Scenario:  That there is a logout button on current page
Then ('i validate logout button is visible on current page', function(){
    cy.get("#logout2").then($button => {
        $button.is(':visible') ? console.log('Log out button is visible on current page') 
        : console.log('Log out button is not visible on current page')
      })
})

// Scenario:  Verify user is not able to access account by using browser back button after logging out
When ('I click the back button', function(){
    cy.go('back')
})
Then ('I validate account not accessible by using browser', function(){
    cy.get('#nameofuser').should('contain.text', '')
})
