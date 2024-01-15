@doKarateResTest
Feature: Test local REST api
#
  #Background: 
    #* url "http://localhost:3000"
    #* header Accept = 'application/json'
#
#
#
  #@testGet
  #Scenario: Do a rest api GET request
    #Given path "/users"
    #When method GET
    #Then status 200
    #And print response
    #And print responseStatus
    #And print responseTime
    #And print responseHeaders
    #And print responseCookies
#
#
  #@testPost
  #Scenario: Do a rest api POST request
    #Given path "/users"
    #And request
      #"""
      #{
        #"firstname": "Indrajit",
        #"lastname": "Biswas",
        #"designation": "Programmer Analyst",
        #"id": 2078196,
        #"email": "indrajit.biswas@cognizant.com"
      #}
      #"""
    #When method POST
    #Then status 201
#
#
  #@testDelete
  #Scenario Outline: Do a rest api DELETE request
    #Given path "/users/"+Emplyee_ID
    #When method DELETE
    #Then status 200
    #And print response
    #And print responseStatus
#
    #Examples: 
      #| Emplyee_ID |
      #|    2078456 |
      #|    2078196 |
