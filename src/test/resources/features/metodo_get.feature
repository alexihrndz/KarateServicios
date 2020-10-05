Feature: pruebas metodo get servicios REST

  Background: variables
    * def urlPath = http + host
    * def pathService = 'api/datamaster/getcitiesbyfranchisecountryapi'

  Scenario: Servicio REST metodo GET
    Given url 'https://uatperson.elempleo.com/app'
    And path 'api/datamaster/getcitiesbyfranchisecountryapi'
    When method GET
    Then status 200

  Scenario: Servicio REST metodo GET
    Given url urlPath
    And path pathService
    When method GET
    Then status 200
      