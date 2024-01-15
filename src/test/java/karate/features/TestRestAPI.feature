@doKarateRestTest
Feature: Test REST api
#
  #Background: 
    #* url "https://reqres.in/"
    #* header Accept = 'application/json'
    #* def folderPath = karate.properties['user.dir'] + "/src/main/resources/"
#
  #
  #@testGet
  #Scenario: Do a rest api parameterized GET request
  #Given path "api/users"
  #And param page = 2
  #When method GET
  #Then status 200
  #And print response
  #And print responseStatus
  #And print responseTime
  #And print responseHeaders
  #And print responseCookies
  #
  #
  #
  #@testGet
  #Scenario: Do a rest api GET request with assertions
  #Given path "api/users"
  #And param page = 2
  #When method GET
  #Then status 200
  #And print response
  #And match response.data[0].first_name != null
  #And assert response.data.length == 6
  #And match response.data[3].id == 10
  #And match $.data[0].first_name == "Michael"
  #And print response.data[0]
  #
  #
  #
  #@testPost
  #Scenario: Do a rest api POST request with assertions
  #Given path "api/users"
  #And request {"name" : "Indrajit","job" : "Tester"}
  #When method POST
  #Then status 201
  #And print response
  #And print responseTime
  #And match response == {"name": "Indrajit", "job": "Tester", "id": "#string","createdAt": "#ignore"}
  #
  #
  #
  #@testPost
  #Scenario: Do a rest api POST request with assertions data from file
  #Given path "api/users"
  #And request {"name" : "Indrajit","job" : "Tester"}
  #When method POST
  #Then status 201
  #And print response
  #And print responseTime
  #And def expectedOutput = read("response.json")
  #And match response == expectedOutput
  #
  #
  #
  #@testPost
  #Scenario: Do a rest api POST request with assertions data and request body from file
    #Given path "api/users"
    #And def requestBody = read('request.json')
    #And print requestBody
    #And request requestBody
    #When method POST
    #Then status 201
    #And print response
    #And print responseTime
    #And def expectedOutput = read("response.json")
    #Then match response == expectedOutput
#
#
#
  #@testPost
  #Scenario: Do a rest api POST request with assertions data and request body from file and change request value
    #Given path "api/users"
    #And def requestBody = read('request.json')
    #Then print requestBody
    #And set requestBody.job = 'engineer'
    #And print requestBody
    #And request requestBody
    #When method POST
    #Then status 201
    #And print response
    #And print responseTime
    #And def expectedOutput = read("response.json")
    #And set expectedOutput.job = 'engineer'
    #And print expectedOutput
    #Then match response == expectedOutput
