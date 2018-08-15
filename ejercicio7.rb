inventory = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
option = 0

menu = <<BLA
  Choose your option
  1. Add a new item
  2. Delete a item
  3. Update a item
  4. Show total stock
  5. Show item with more stock
  6. Search item
  7. Exit
BLA

def option_1(inventory)
  print "Add a new item with Stock\n"
  print "* you should to separe each item with comma ','.\n"
  item = gets.chomp.split(',')
  inventory[item.first] = item.last.to_i
  print "The current inventory: \n #{inventory}"
end

def option_2(inventory)
  print "Delete a item"
  print "* the name must exist.\n"
  item = gets.chomp
  print "Deleting item: #{item}\n\n" if inventory.include?(item)
  print "The item not exist: #{item}\n\n" unless inventory.include?(item)
  inventory.delete(item)  
  print "The current inventory: \n #{inventory}"
end

def option_3(inventory)
  print "Update a item\n"
  print "* you should to separe each item with comma ','.\n"
  item = gets.chomp.split(',')

  actualizando = "Updating item: #{item.first}\n\n"
  no_existe = "The item not exist: #{item.first}\n\n"
  print inventory.include?(item.first) ? actualizando : no_existe
  inventory[item.first] = item.last.to_i if inventory.include?(item.first)
  print "The current inventory: \n #{inventory}"
end

def option_4(inventory)
  print "Show stock\n"
  total_stock = inventory.values.sum
  print "Your stock are: #{total_stock}"
  print "The current inventory: \n #{inventory}"
end

def option_5(inventory)
  print "Show item with more stock \n"
  mayor_stock = inventory.max_by { |llave, valor| valor }
  print "Your item is: #{mayor_stock.first} y su valor es: #{mayor_stock.last}"
  print "The current inventory: \n #{inventory}"
end

def option_6(inventory)
  print "Search item\n"
  print "* enter the item's name.\n"
  item = gets.chomp
  print "The item is: #{item}\n\n" if inventory.include?(item)
  print "The item not exist: #{item}\n\n" unless inventory.include?(item)
  print "The current inventory: \n #{inventory}"
end

while option != 7
  print menu
  option = gets.to_i
  case option
  when 1
    option_1 inventory
  when 2
    option_2 inventory
  when 3
    option_3 inventory
  when 4
    option_4 inventory
  when 5
    option_5 inventory
  when 6
    option_6 inventory
  when 7
    print "Good bay!"
  else
    print "Wrong option"
  end
end