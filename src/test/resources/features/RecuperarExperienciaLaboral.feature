Feature: Recuperar Experiencia Laboral

  Background: variables
    * def urlPath = http + host
    * def pathService = '/api/curriculumvitae/getlaboralexperiencesapi'

  Scenario: Servicio REST metodo GET
  * header Authorization = 'bearer ' + datosLogin.response.Data 
  * def responseExpected = read('../jsonFiles/ExperienciaLaboralRS.json')
    Given url urlPath
    And path pathService
    When method GET
    Then status 200 
    And match response.Data == '#array'
    And match response.Data[0].CompanySectorId == 1159
    And match response.Data[0].Achievements contains 'Logros obtenidos'
    And match response.Data[0].CompanySectorId == '#number'
    And match response.Data[0].CompanySectorId == '#present'
    And match response.Data[0].CompanySectorId == '#notnull'
    And match response.Data[0] == responseExpected
    And match response.Data[*] contains responseExpected
   