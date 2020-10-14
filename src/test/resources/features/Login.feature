Feature: login

  Background: variables
    * def urlPath = http + host
    * def pathService = 'api/login/authenticateapi'
    * def jsonData = read('../jsonFiles/DatosLogin.json')

  Scenario: Servicio REST metodo POST

    Given url urlPath
    And path pathService
    And request jsonData
    When method POST
    Then status 200