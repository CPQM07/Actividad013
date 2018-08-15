meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

meses_ventas = meses.zip(ventas).to_h

invertido = meses_ventas.invert
print invertido.max