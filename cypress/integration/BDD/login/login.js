/// <reference types="Cypress" /> 
/// <reference types="cypress-iframe" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

//Scenario: Verify that the login page is accessible
Given ('I open Ecommerce page', function(){
    //you can use => if your function didnt have name
    //but mocha hooks does not support => operator 
    cy.visit(Cypress.env("url"))
})
When ('I click the login button', function(){
    cy.get('#login2').click()
    cy.wait(2000)
})
Then ('Verify that the login page is displayed', function(){
    cy.get("#loginusername").then($button => {

        $button.is(':visible') ? console.log('Username box is visible') : console.log('Username box is invisible')
        //if ($button.is(':visible')){
          //console.log('Login place is visible')
       // }
        //else
      })
      cy.get("#loginpassword").then($button => {
        $button.is(':visible') ? console.log('Password box is visible') : console.log('Password box is invisible')
      })
      cy.get("button[onclick='logIn()']").then($button => {
        $button.is(':visible') ? console.log('Login box is visible') : console.log('Login box is invisible')
      })
})

// Scenario: Verify successful login with valid username and password 
const num = 5
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

//Scenario: Verify unsuccessful login with blank username and password
Then ('i click login', function(){
    cy.get("button[onclick='logIn()']").click()
})
Then ('verify unsuccessfull login message -Please fill out Username and Password.-', function(){
    cy.on('window:alert', (str) => //fat pipe resolves Promise
     {
         expect(str).to.equal('Please fill out Username and Password.')
     })
})

//Scenario: Verify unsuccessful login with valid username and blank password
    When ('I enter valid username', function(){
        cy.get('#loginusername').type(Cypress.env('Username'))
    })

//Scenario: Verify unsuccessful login with blank username and valid password
    When ('I enter valid password', function(){
        cy.get('#loginpassword').type(Cypress.env('Password'))
    })

//Scenario: Verify unsuccessful login with invalid username and blank password
When ('I enter invalid username', function(){
    cy.get('#loginusername').type('Username'+ num)
})

//Scenario: Verify unsuccessful login with blank username and invalid password
When ('I enter invalid password', function(){
    cy.get('#loginpassword').type('Password')
})

//Scenario: Verify unsuccessful login with invalid username and valid password
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

// Scenario: Verify unsuccessfull login with valid username and invalid password
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


//div.container:nth-child(6) div.row div.col-lg-9 div.row:nth-child(1) > div.col-lg-4.col-md-6.mb-4
//div.container:nth-child(6) div.row div.col-lg-9 div.row:nth-child(1) div.col-lg-4.col-md-6.mb-4
