@tag
Feature: Config.js file demo

  Background: 
    * url global_baseURL

  @testGet
  Scenario: Do a rest api parameterized GET request
  Given path "/users"
  And param page = 2
  When method GET
  Then status 200
