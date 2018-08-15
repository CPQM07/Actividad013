productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

productos.each do |nombre, precio| 
    puts nombre
end

productos['cereal'] = 2200

productos['bebida'] = 2000

array_productos = productos.to_a

productos.delete('galletas')

print productos