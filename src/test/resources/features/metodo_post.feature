Feature: pruebas metodo POST servicios REST

  Background: variables
    * def urlPath = http + host
    * def pathService = 'api/CompanyContact/handlesendcommentaoi'
    * def jsonData = read('../jsonFiles/sendCommetsRQ.json')

  Scenario: Servicio REST metodo POST
    * param subject = 'Asunto del comentario'

    Given url 'https://uatperson.elempleo.com/app'
    And path pathService
    And request
      """
      {
          "Name": "Nombre Apellido",
          "Email": "direccion@correo.com",
          "IdentityCard": "9999999",
          "IdentityType": 2,
          "Comment": "Comentario de pruebas",
          "UserIsLogged": true,
          "ContactEmail": "direccionContacto@correo.com"
      }
      """
    When method POST
    Then status 200

  Scenario: Servicio REST metodo POST
    * param subject = 'Asunto del comentario'

    Given url urlPath
    And path pathService
    And request jsonData
    When method POST
    Then status 200