function globalVariables() {
  var env = karate.env;
  if (!env) {
    env = 'UAT';
  }
var config = { };

    switch (env){
        case 'UAT' :
            config = {
                http: 'https://',
                host: 'uatperson.elempleo.com/app',
                jsonFilesDir: '../../jsonFiles',

                emailTest: 'aut10020@correo.com',
                passwordTest: '3l3mple0.c0m',
                idNumberTest: '19991021',
                namesRegisterTest: 'TestAut',
                lastNameTest: 'QA',
                emailNoRegistradoTest: 'correo@dominiotest.com',
                emailAlternativoTest: 'qa.alternativo@correo.com',

                httpCR: 'http://',
                hostCR: 'uatperson.elempleo.com/app',

                httpCR: 'http://',
                hostCR: 'vmsrv006.eastus.cloudapp.azure.com/app',

                emailTestCR: 'correo10015@correo.com',
                passwordTestCR: '3l3mple0.c0m',
                idNumberTestCR: '10001015',
                namesRegisterTestCR: 'TestAutCR',
                lastNameTestCR: 'QA',
                emailNoRegistradoTestCR: 'correo@dominiotest.com'

            };
            break;

        case 'AZURE' :
            config = {
                http: 'http://',
                host: 'vmsrv002.eastus.cloudapp.azure.com/app',

                emailTest: 'qvision1021@correo.com',
                passwordTest: '3l3mple0.c0m',
                idNumberTest: '1001021',
                namesRegisterTest: 'TestAut',
                lastNameTest: 'QA',
                emailNoRegistradoTest: 'qvision1002.noregistrado@correo.com',
                emailAlternativoTest: 'qvision1002.alternativo@correo.com',

                httpCR: 'http://',
                hostCR: 'vmsrv006.eastus.cloudapp.azure.com/app',

                emailTestCR: 'qvision1003@gmail.com',
                passwordTestCR: '3l3mple0.c0m',
                idNumberTestCR: '1001003',
                namesRegisterTestCR: 'TestAutCR',
                lastNameTestCR: 'QA',
                emailNoRegistradoTestCR: 'qvision1002.noregistrado@correo.com',
                emailAlternativoTestCR: 'qvision1002.alternativo@correo.com',

                jsonFilesDir: '../../jsonFiles'
            };
                break;
    }
  karate.configure('connectTimeout', 10000);
  karate.configure('readTimeout', 10000);
//  karate.configure('ssl', true);
  return config;
}