
# Online Python - IDE, Editor, Compiler, Interpreter

historial =  (2350, 5960, 23000, 1000, 8900)
	
	
def sumar(montos):
    total= 0
    for v in montos:
      total += v
    return total
	    
	    
gastoTotal = sumar(historial)
	
if (gastoTotal < 30000):
    print(gastoTotal)
    
else:
    print("Gastos por encima de lo presupuestado")