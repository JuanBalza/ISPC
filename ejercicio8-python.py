# 8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
# 7510, 7960, 76180, 800, 4100
# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.

historial4 = (7510, 7960, 76180, 800, 4100)

def valor_minimo():
    return min(historial4)

print('El valor mínimo de atención gastada en “Olivia” es de:')
print(valor_minimo())