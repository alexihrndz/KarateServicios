Feature: Recuperar Experiencia Laboral

  Background: variables
  
    * def pathServiceLogin = 'api/login/authenticateapi'
    * def jsonData = read('../jsonFiles/DatosLogin.json')
    * def urlPath = http + host
    * def pathService = '/api/curriculumvitae/getlaboralexperiencesapi'
    
    Given url urlPath
    And path pathServiceLogin
    And request jsonData
    When method POST
    Then status 200
    * def token = response.Data

  Scenario: Servicio REST metodo GET
  * header Authorization = 'bearer ' + token 
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
    
    * def pathServiceDelete = '/api/curriculumvitae/deletelaboralexperienceapi'
    * def idExperiencia = response.Data[0].Id
    * param experienceId = idExperiencia
    * header Authorization = 'bearer ' + token 
    Given url urlPath
    And path pathServiceDelete
    When method DELETE
    Then status 200 
    
   