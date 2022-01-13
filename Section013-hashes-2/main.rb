#----------- create hash with default value
fruit_prices = {banana: 1.05}

# fruit_prices = {:orange}
# fruit_prices = {:grape}

fruit_prices = Hash.new(0) # return zero if nil or nothing is found, because that is what we added
fruit_prices = Hash.new("Not Found")

fruit_prices[:banana] = 1.05
fruit_prices[:orange] = 0.99
fruit_prices[:kiwi] = 10.05

p fruit_prices[:steak] 
p fruit_prices[:celery] 
p fruit_prices[:mushroom] 

fruit_prices.default = "Whoops! That doesn't exist here!"

p fruit_prices[:steak] 
p fruit_prices[:celery] 
p fruit_prices[:mushroom] 


#----------- convert hash to array and vice versa
spice_girls = {scary: "Melanie Brown", sporty: "Melanie Chisholm", baby: "Emma Bunton", ginger: "Geri Halliwell", posh: "Victoria Beckham"}

power_rangers = [
  [:red, "Jason"],
  [:black, "Zack"],
  [:blue, "Billy"],
  [:yellow, "Trini"],
  [:pink, "Kimberly"]
]

p spice_girls.to_a
p spice_girls.to_a.flatten

p power_rangers.to_h

#----------- the .sort and .sort_by methods on a hash
pokemon = {squirtile: "Water", bulbasaur: "Grass", charizard: "Fire"}

p pokemon.sort
p pokemon.sort.reverse
p pokemon.sort.class 
puts
p pokemon.sort_by { |pokemon, type| pokemon }
p pokemon.sort_by { |pokemon, type| pokemon }.reverse
puts
p pokemon.sort_by { |pokemon, type| type }
p pokemon.sort_by { |pokemon, type| pokemon }.reverse


#----------- the .key? and .value? methods on a hash
cars = {toyota: "camry", chevrolet: "aveo", ford: "f-150", kia: "soul"}

puts cars.key?(:ford)
puts cars.key?(:kia)
puts cars.key?("chevrolet")

puts cars.value?("camry")
puts cars.value?("aveo")
puts cars.value?("chevy")

# older method has_key? and has_value?


#----------- hashes as method arguments

def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tax_amount + tip_amount
end

puts calculate_total_1(24.99, 0.18, 0.07)

# this is an issue - what if we forget the order
puts calculate_total_1(0.18, 0.07, 24.99)

def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

bill = {price: 24.99, tip: 0.18, tax: 0.07}
new_bill = { tip: 0.18, price: 24.99, tax: 0.07}

p calculate_total_2(bill)
p calculate_total_2(new_bill)
p calculate_total_2({ tip: 0.28, price: 24.99, tax: 0.05})
p calculate_total_2(tip: 0.28, price: 24.99, tax: 0.05) # we can exclude the the curly bracket in the method call

#----------- the .delete method on a hash
superheroes = {spiderman:"Peter Parker", superman: "Clark Kent", batman: "Bruce Wayne"}

p superheroes

superheroes.delete(:spiderman)

p superheroes

#----------- the .select and .reject methods on a hash
recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}

high = recipe.select { | ingredient, teaspoon |  teaspoon >= 5}
p high

low = recipe.reject { | ingredient, teaspoon |  teaspoon >= 5}
p low

odd = recipe.select { | ingredient, teaspoon |  teaspoon.odd?}
p odd

include_s = recipe.select { | ingredient, teaspoon |  ingredient.to_s.include?("s")}
p include_s


#----------- the .merge method to combine hashes
market = {garlic:"3 cloves", tomatoes: "5 batches", milk: "10 gallon"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "100 gallon"}

p market.merge(kitchen)


#----------- challenge
sentence = "Once upon a time in a land far far away"

def word_count(string)
  # return a hash where the keys will represent 
  # the words in the string and the values will
  # represrnt how many times that key occur
  
end