Feature: login

  Background: variables
    * def urlPath = http + host


  Scenario: Servicio REST metodo POST
  
		Given def datosLogin = call read('Login.feature')
		* print datosLogin.response.Data
		
		Given  def recuperarExperiencia = call read('RecuperarExperienciaLaboral.feature') datosLogin