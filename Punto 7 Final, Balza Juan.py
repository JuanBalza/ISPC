# Ejercicio 11.2: Crear una función para sumar todos los números en una lista o tupla.

from ast import If


def sumar(valores):
        acumulador = 0

        for v in valores:
            acumulador += v
        
        return acumulador

print()

precios = (9530, 4120, 4580, 1500, 890,7516,426)

resultado = sumar(precios)
print('El gasto total de Lennon {} es igual a {}.'.format(precios, resultado))
if resultado > 4500:
   print("Se ha excedido del gasto promedio para su mascota")
