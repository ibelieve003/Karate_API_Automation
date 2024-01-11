@doKarateRestTest
Feature: Test REST api

  Background: 
    * url "https://reqres.in/"
    * header Accept = 'application/json'
    * def projectPath = karate.properties['user.dir']
    Then print projectPath
    * def fileFolderPath = projectPath + "\\src\\main\\resources\\"

  
  #<-- parameterized get request -->
  @testGet
  Scenario: Do a rest api parameterized GET request
  Given path "api/users"
  And param page = 2
  When method GET
  Then status 200
  And print response
  And print responseStatus
  And print responseTime
  And print responseHeaders
  And print responseCookies
  
  #parameterized get request with assertions
  @testGet
  Scenario: Do a rest api GET request with assertions
  Given path "api/users"
  And param page = 2
  When method GET
  Then status 200
  And print response
  And match response.data[0].first_name != null
  And assert response.data.length == 6
  And match response.data[3].id == 10
  And match $.data[0].first_name == "Michael"
  And print response.data[0]
  
  #post request with assertions
  @testPost
  Scenario: Do a rest api POST request with assertions
  Given path "api/users"
  And request {"name" : "Indrajit","job" : "Tester"}
  When method POST
  Then status 201
  And print response
  And print responseTime
  And match response == {"name": "Indrajit", "job": "Tester", "id": "#string","createdAt": "#ignore"}
  
  # post request with assertions data from file
  @testPost
  Scenario: Do a rest api POST request with assertions data from file
    Given path "api/users"
    And request {"name" : "Indrajit","job" : "Tester"}
    When method POST
    Then status 201
    And print response
    And print responseTime
    #And print fileFolderPath
    #And def expectedOutput = read(fileFolderPath + "response.json")
    #And match response == expectedOutput
    And match response == read("./response.json")

  # post request with assertions data and request body from file
  @testPost
  Scenario: Do a rest api POST request with assertions data and request body from file
    Given path "api/users"
    And print fileFolderPath
    And def requestBody = read(fileFolderPath + "response.json")
    And request {"name" : "Indrajit","job" : "Tester"}
    When method POST
    Then status 201
    And print response
    And print responseTime
    And print fileFolderPath
    And def expectedOutput = read(fileFolderPath + "response.json")
    And match response == expectedOutput
    
    
   
