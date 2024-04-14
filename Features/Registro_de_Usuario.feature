Feature:Registro de usuario

Scenario: Ingresar datos correctamente
    Given el visitante desea registrarse en la aplicación 
    When  llene correctamente del datos necesarios del formulario registro de usuario y presione el botón registrarse
    Then se registrará en la aplicación.

  Scenario: Ingresar datos erróneos
    Given el visitante desea registrarse en la aplicación 
    When  no llene correctamente del datos necesarios del formulario registro de usuario y presione el botón registrarse
    Then se mostrara en mensaje que ingresó datos erroneos.
