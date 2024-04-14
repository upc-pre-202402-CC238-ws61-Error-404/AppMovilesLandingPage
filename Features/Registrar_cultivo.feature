Feature: Registrar Cultivo

  Scenario: Registrar datos correctamente
    Given el usuario llena apropiadamente los datos pertinentes de los cultivos
    When  presione el botón registrar 
    Then se mostrara en mensaje que ingresó datos correctos sobre el cultivo


  Scenario: Registrar datos erróneamente
    Given el usuario no llena apropiadamente los datos pertinentes de los cultivos
    When  presione el botón registrar 
    Then se mostrara en mensaje que ingresó datos erróneos sobre el cultivo
