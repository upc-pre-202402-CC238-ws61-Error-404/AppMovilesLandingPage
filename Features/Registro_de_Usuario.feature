Feature:Registro de usuario

Scenario: Ingresar datos correctamente
    Given el visitante llene correctamente del datos necesarios del formulario registro de usuario
    When  presione el botón registrarse
    Then se registrará en la aplicación.

  Scenario: Ingresar datos erróneos
    Given el visitante no llene correctamente del datos necesarios del formulario registro de usuario
    When  presione el botón registrarse
    Then se mostrara en mensaje que ingreso datos erroneos.
