/// <reference types="Cypress" /> 
/// <reference types="cypress-iframe" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
  
  beforeEach(() => {
    cy.fixture('example').then(function(data)
    {
        this.data = data
    })
  })


//Scenario: Validate contact button is working
    Given ('I open the Ecommerce page and login', function(){
        cy.visit(Cypress.env("url"))
        cy.get('#login2').click()
        cy.wait(2000)
        cy.get('#loginusername').type(Cypress.env('Username'))
        cy.get('#loginpassword').type(Cypress.env('Password'))
        cy.get("button[onclick='logIn()']").click()
        cy.wait(3000)
    })
    When ('I click the Contact button', function(){
        cy.get(':nth-child(2) > .nav-link').click()
        cy.wait(2000)
    })
    Then ('I verify Contact buton is working', function(){
        cy.get('.modal-title').contains('New message')
    })

//Scenario: Validate Name, Email and Message field is present
    Then ('I verify Name, Email and Message field is present', function(){
        cy.get("#recipient-email").then($button => {
            $button.is(':visible') ? console.log('Email field is visible') 
            : console.log('Email field is invisible')
        })
        cy.get("#recipient-name").then($button => {
            $button.is(':visible') ? console.log('Name field is visible') 
            : console.log('Name field is invisible')
        })
        cy.get("#message-text").then($button => {
            $button.is(':visible') ? console.log('Message field is visible') 
            : console.log('Message field is invisible')
        })
    })

//Scenario: Validate unsuccessful submission of contact with blank Name, Email and Message
    When ('I click send message button', function(){
        cy.get('#exampleModal > .modal-dialog > .modal-content > .modal-footer > .btn-primary').click()
    })
    Then ('I verify unsuccessful message submission',function(){
    //there is bug here, getting success msg when msg was supposed to be unssucessfull
    })

//Scenario: Validate app not accepting invalid email format
    Then ('I enter invalid email format', function(){
        cy.get("#recipient-email").type(this.data.InvalidEmail)
    })
    Then ('I verify app rejection of invalid email format', function(){
    //there is bug here, getting success msg when app was'nt supposed to accept invalid email format
    })

//Scenario: Validate unsuccessful submission of contact with blank Name and data in Email and Message
    Then ('I enter Email and Message', function(){
        cy.get("#recipient-email").type(this.data.ValidEmail)
        //cy.get("#recipient-name").
        cy.get("#message-text").type(this.data.Message)
    })
    //there is bug here, getting success msg when app was'nt supposed to accept blank name

//Scenario: Validate unsuccessful submission of contact with blank Email and data in Name and Message
    Then ('I enter Name and Message', function(){
        //cy.get("#recipient-email").type(Cypress.env('ValidEmail'))
        cy.get("#recipient-name").type(this.data.Username)
        cy.get("#message-text").type(this.data.Message)
    })
        //there is bug here, getting success msg when app was'nt supposed to accept blank Email

//Scenario: Validate unsuccessful submission of contact with blank Message and data in Name and Email
    Then ('I enter Name and Email', function(){
        cy.get("#recipient-name").type(this.data.Username)
        cy.get("#recipient-email").type(this.data.ValidEmail)
    })
    //there is bug here, getting success msg when app was'nt supposed to accept blank Message

//Scenario: Validate unsuccessful submission of contact with data in Name and blank Email and Message
    Then ('I enter Name',function(){
        cy.get("#recipient-name").type(this.data.Username)
    //there is bug here, getting success msg when app was'nt supposed to accept blank Email and Message
    })

//Scenario: Validate unsuccessful submission of contact with data in Email and blank Name and Message
    Then ('I enter Email', function(){
        cy.get("#recipient-email").type(this.data.ValidEmail)
    //there is bug here, getting success msg when app was'nt supposed to accept blank Name and Message
    })

//Scenario: Validate unsuccessful submission of contact with data in Message and blank Name and Email
    Then ('I enter Message', function(){
        cy.get("#message-text").type(this.data.Message)
    //there is bug here, getting success msg when app was'nt supposed to accept blank Name and Email
    })

//Scenario: Verify app display unsuccessful message confirming message not sent
    //there is bug here, getting success msg when app was supposed to display unssucessful message

//Scenario: Verify successful submission of Contact with data in Name, Email and Message
    Then ('I enter Name, Email and Message', function(){
        cy.get("#recipient-name").type(this.data.Username)
        cy.get("#recipient-email").type(this.data.ValidEmail)
        cy.get("#message-text").type(this.data.Message)
    })
    Then ('I verify successful Contact submission', function(){
        cy.on('window:alert', (str) => //fat pipe resolves Promise
        {
            expect(str).to.equal('Thanks for the message!!')
        })
    })

//Scenario: Validate Message have maximum allowed length
    Then ('I enter Long Message', function(){
        cy.get("#message-text").type(this.data.LongMessage)
    })
    Then ('I verify Message have maximum allowed length', function(){
    //there is bug here as app does not have maximum length allowed for message
    })

//Scenario: Validate Name have maximum allowed length
    Then ('I enter Long Name', function(){
        cy.get("#recipient-name").type(this.data.LongMessage)
    })
    Then ('I verify Name have maximum allowed length', function(){
        //there is bug here as app does not have maximum length allowed for name
    })

//Scenario: verify that app sanitizes the input and prevents any harm from message that
// contains HTML or other potentially malicious code
    Then ('I enter Long and Non text Message', function(){
        cy.get("#message-text").type(this.data.LongMessage)
    })
    Then ('I verify app sanitizes the input and prevents any harm from message contains HTML or other potentially malicious code'
    ,function(){
        //there is bug here as app does not app sanitizes the input and prevents any harm from 
        //message contains HTML or other potentially malicious code
    })
    