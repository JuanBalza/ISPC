#6)Crear una tupla en Python con el nombre de “Historial2” la cual contenga los siguientes valores:
#23500, 5960, 2300, 10200, 8900
#Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Frida”.
#1)Calcular el monto total gastado a lo largo del tiempo por atención de “Frida”.
#2)Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  el número calculado en pantalla.

historial2 = [23500, 5960, 2300, 10200, 8900]

total = 0

for monto in historial2:
    total += monto

count = 0

def montoS(count):
    for i in historial2:
        if i > 5000:
            count += 1 
    return count

print ( "El monto total gastado a lo largo del tiempo por atencion de FRIDA es: ", int(total))
print ( "Los montos superiores a 5000 en FRIDA son:", montoS(count))     
