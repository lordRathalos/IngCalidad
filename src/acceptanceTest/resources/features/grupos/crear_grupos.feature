# language: es

Característica: Crear Grupo para repartir gastos

  Regla: Los grupos tienen un nombre que los identifica

    Escenario: Crea un grupo con nombre
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo indicando el nombre 'Regalo de navidad'
      Entonces debería visualizar dentro del listado el grupo con el nombre indicado

    @pendiente
    Escenario: No puede crear un grupo sin nombre
      Dado que el usuario inició Repartir
      Cuando el usuario intenta crear un grupo sin indicar su nombre
      Entonces no debería crear el grupo 'sin nombre'

  Regla: Los grupos están compuestos por al menos dos miembros

    Escenario: Crea un grupo con dos miembros
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo indicando que sus miembros son 'mariano' y 'juancruz'
      Entonces visualiza dentro del listado el grupo con los miembros indicados

    Escenario: No puedo crear un grupo con un único miembro
      Dado que el usuario inició Repartir
      Cuando el usuario intenta crear un grupo indicando un único miembro
      Entonces no debería crear el grupo 'con un único miembro'

    Escenario: Crea un grupo con dos miembros repetidos
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo indicando que sus miembros son 'Pepe' y 'Pepe'
      Entonces no debería crear el grupo 'con miembros repetidos'

  Regla: Los grupos tienen un estado inicial

    Escenario: El total inicial del grupo es $ 0
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo
      Entonces debería visualiza dentro del listado el grupo creado con total '$  0,00'

  Regla: Los grupos tienen un nombre entre 2 y 50 caracteres

    Escenario: Crea un grupo con nombre de 1 caracter
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo indicando el nombre 'A'
      Entonces no debería crear el grupo 'con un nombre de un caracter'

    Escenario: Crea un grupo con nombre de 50 caracteres
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo indicando el nombre 'Un nombre de un grupo con cincuenta caracteres...'
      Entonces debería visualizar dentro del listado el grupo con el nombre indicado

    Escenario: Crea un grupo con nombre de mas de 50 caracteres
      Dado que el usuario inició Repartir
      Cuando el usuario crea un grupo indicando el nombre 'Un nombre de un grupo con mas de cincuenta caracteres'
      Entonces no debería crear el grupo 'con un nombre con mas de 50 caracteres'
