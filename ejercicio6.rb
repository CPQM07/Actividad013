restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

mas_caro = restaurant_menu.max_by {|key, value| value}
print "Plato mas caro: #{mas_caro}\n"

mas_barato = restaurant_menu.min_by {|key, value| value}
print "Plato mas barato: #{mas_barato}\n"

promedio = (restaurant_menu.values.sum / restaurant_menu.length)
print "El promedio: #{promedio}\n"

nombre_platos = restaurant_menu.keys
print "Nombre de los platos: #{nombre_platos}\n"

valores_platos = restaurant_menu.values
print "Valor de los platos: #{valores_platos}\n"

restaurant_menu.each { |key, value| restaurant_menu[key] = value * 1.19 }
print "Menu con iva: #{restaurant_menu}\n"

restaurant_menu.each { |key, value| restaurant_menu[key] = value * 0.8 if key.index(" ") }
print "Menu con descuento: #{restaurant_menu}\n"