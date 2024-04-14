Feature: Inicio de sesión de usuario

  Scenario: Ingresar datos correctamente
    Given el usuario ingresa su correo y contraseña válidos
    When haga click al botón de "Log in"
    Then podrá acceder al sistema correctamente

  Scenario: Ingresar datos incorrectos
    Given el usuario ingresa un correo o contraseña inválidos
    When haga click al botón de "Log in"
    Then se mostrará un mensaje de error indicando que los datos son incorrectos y no podrá acceder al sistema

  Scenario: Olvidar contraseña
    Given el usuario olvida su contraseña
    When haga click en el enlace "¿Olvidaste tu contraseña?"
    Then se le proporcionará un medio para restablecerla

  Scenario: Ingresar datos en blanco
    Given el usuario no ingresa ningún dato en los campos de correo y contraseña
    When haga click al botón de "Log in"
    Then se mostrará un mensaje de error indicando que los campos son obligatorios y no podrá acceder al sistema

