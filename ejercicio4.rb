people = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
ages = [32, 28, 41, 19]

people_ages = people.zip(ages).to_h

def average hash
    hash.values.sum / hash.length
end

print average people_ages