Feature: Contactar a Chaquitaclla

  Scenario: Enviar mensaje correctamente
    Given el usuario desea contactar a Chaquitaclla
    When llene correctamente el formulario de contacto y presione el botón "Enviar"
    Then se enviará el mensaje correctamente a Chaquitaclla

  Scenario: Campos obligatorios vacíos
    Given el usuario desea contactar a Chaquitaclla
    When deje campos obligatorios vacíos en el formulario de contacto y presione el botón "Enviar"
    Then se mostrará un mensaje indicando que los campos obligatorios deben ser llenados

  Scenario: Formato de correo electrónico incorrecto
    Given el usuario desea contactar a Chaquitaclla
    When ingrese un correo electrónico en un formato incorrecto en el formulario de contacto y presione el botón "Enviar"
    Then se mostrará un mensaje indicando que el formato del correo electrónico es incorrecto
  
