h = {"x": 1, "y":2}

h[:z] = 3

h[:x] = 5

h.delete(:y)

print h

invertido = {}

h.each do |key, value|
    invertido[:"#{value}"] = key
end

print invertido