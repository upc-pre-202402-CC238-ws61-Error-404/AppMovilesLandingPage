Feature:Eliminar registro de cultivo

  Scenario: Eliminar cultivo registrado
    Given el usuario desea eliminar un registro de cultivo previamente registrado
    When  presiona el botón Eliminar para confirmar la acción
    Then  el registro seleccionado será eliminado dela base de datos
