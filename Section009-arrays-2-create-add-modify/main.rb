#----------- the ri program
#----------- review blocks
# 3.times {puts "Hello there"}
# 3.times { |number| puts "I am currently on loop number #{number}"}
# 3.times do |number|
#   square = number * number
#   puts "#{number} squared id #{square}"
# end

# puts square

#----------- the .each method on an array
# candies = ["Sour Patch Kids", "Milky Way", "Airheads"]

# candies.each do |candy|
#   puts "I love eating #{candy}"
# end

# names = ["bo", "moe", "joe"]
# names.each {|names| puts names.capitalize}

# [1,2,3,4].each do |num|
#   puts "squaring #{num * num}"
# end

#----------- more practice with the .each method
fives = [5,10,15,20,25,30,35,40]
odds = []
evens = []

# fives.each do |number| 
#   if number.even?
#     evens.push(number)
#   end
  
# end

# puts odds


# fives.each do |number| 
#   if number.even?
#     evens.push(number)
#   else
#     odds << number
#   end
  
# end

# puts odds
# puts evens

# # one line
# fives.each {|number| number.even? ? evens << number : odds << number}

#----------- each within each
# shirts = ["striped", "plain white", "plaid", "band"]
# ties = ["polka dot", "solid color", "boring"]

# shirts.each do |shirt|
#   ties.each do |tie|
#     puts "#{shirt} with #{tie} tie"
#   end
# end

#----------- the for loop
# numbers = [3,5,7]
# rng = 1..10

#num will presence, unlike a block level var eg. |num|
# for num in numbers
#   puts num
# end

# p num

# for r in rng 
#   puts r
# end

#----------- the .each_with_index method
# colors = ["Red", "Blue", "Green", "Yellow"]

# colors.each_with_index do |color, index|
#   puts "Moving on to the next index #{index}"
#   puts "The current color is #{color}"
# end

# Write a loop that iterates over a numberic array
# output the product of each number and its index position
# fives = [5,10,15,20,25,30]

# fives.each_with_index do |number, i|
#   puts "The current value is #{number} at index #{i}"
#   puts number * i
# end

#----------- challenge the .each_with_index
# [1,2,3,4,5] - Write a loop that gives me a sum of the products of each index and its value
# sum = 0
# [1,2,3,4,5].each_with_index {|num, i | sum += (num * i)}
# puts sum


# Print the product of the element and its index pos
# if the index postion is greater then the element
# create this within a method
# arr = [-1, 2, 1, 2, 5, 7, 3]

# def print_if(array)
#   array.each_with_index do |num, i |
#     if i > num
#       puts i * num
#     end
#   end
# end

# print_if(arr)

#----------- the .map and .collect methods on an array
# these are the same, use .map, it's shorter to write
numbers = [1,2,3,4,5]

# squares = numbers.map {|number| number ** 2}
# p squares

# squares = numbers.collect {|number| number ** 2}
# p squares

# squares = []

# numbers.each {|number| squares << number ** 2}
# p squares

# fahr_temperature = [105, 73, 40, 18, -2]

# cel_temperature = fahr_temperature.map do |temp|
#   minus32 = temp - 32
#   minus32 * (5.0/9.0)
# end

# p cel_temperature

# numbers = [3,8,11,15,89]

# Write a cubes method that accepts an array 
# and returns a new array. The new array will 
# have all the values from the original one cubed
# def cubes(array)
#   array.map{|el| el ** 3}
# end

# puts cubes(numbers)

#----------- iteration over array with while or until loops
# animals = ["Lion", "Zebra", "Baboon", "Cheetah"]

# i = 0
# while i < animals.length 
#   puts animals[i]
#   i += 1
# end

# until i == animals.length
#   puts animals[i]
#  i += 1
# end

#----------- the break keyword
# prizes = ["Pyrite", "Pyrite", "Pyrite", "Pyrite", "Gold", "Pyrite"]
# i = 0 

# while i < prizes.length
#   current = prizes[i]
#   if current == "Gold"
#     puts "Yay! Found gold!"
#     break
#   else
#     puts "#{current} is not gold!"
#   end
#   i += 1
# end

# numbers = [1,2,3,"Hello", 5,6,7,8]

# numbers.each do |num|
#   if num.is_a?(Integer)
#     puts "The square of #{num} is #{num ** 2}"
#   else
#     puts "That's not a valid numbers"
#     break
#   end
# end

#----------- the next keyword
# numbers = [1,2,3, "Hello", 5,6,nil, 7,8,[]]

# numbers.each do |num|
#   unless num.is_a?(Integer)
#       next 
#     else
#       puts "The square of #{num} is #{num ** 2}"
#     end
# end

# numbers.each do |num|
#   if num.is_a?(Integer)
#     puts "The square of #{num} is #{num ** 2}"
#   else
#     next
#   end
# end

#----------- the .reverse and .reverse! method on an array
# p "Hello".reverse
# p [1,2,3,4].reverse
# p [true, false, false, true, false].reverse

#----------- the .sort and sort! method on an array
# remember capitlized letter will come before lower case  Z will come be a
# numbers = [5,13,1,-2,8]
# words = ["caterpillar", "butterfly", "drgonfly", "bee"]

# p numbers.sort
# p words.sort
# p words.sort.reverse

# mixed = [1, true, nil, 'apple', false,2, 'bee', false]

# p mixed.sort

#----------- the .concat method on an array
# p [1,2,3,] + [4,5]

# p [1,2,3].concat([4,5]) # will mutate the org array

# def custom_concat(arr1, arr2)
#   # return arr with all of the elements from arr2
#   arr1 + arr2
# end

# p custom_concat([1,2], [4,5])

#----------- the .max and .min method on an array
# stock_prices = [723.99, 434.12, 84.7, 649.92]
# fruits = ["apple", "kiwi", "banana", "watermelon"]

# p stock_prices.max
# p stock_prices.min
# p fruits.max
# p fruits.min

# def custom_max(arr)
# #  arr.sort[-1]
#   max = arr[0]
#   arr.each do |value|
#     if value > max
#       max = value
#     end
#   end
#   max
# end

# p custom_max([1,42,3,4,5])

# def custom_min(arr)
#   # arr.sort[0]
#   min = arr[0]
#   arr.each do |value|
#     if value < min
#       min = value
#     end
#   end
#   min
# end

# p custom_min([1,2,3])

#----------- the .include? predicate method on an array
# numbers = [1,2,3,4,5]

# p numbers.include?(1)

# fruits = ["apple", "kiwi", "banana"]
# p fruits.include?("peach")

#----------- the .index and .find_index (these are the same )method on an array
# colors = ["red", "blue", "green", "red"]

# p colors.index("green")
# p colors.index("orange")

#----------- the .select method on an array
# grades = [80, 96, 13, 76, 28, 39]


# matches = grades.select do |num|
#   num >= 75
# end
# p matches


# even_matches = grades.select do |num|
#   num.even?
# end
# p even_matches

# words = ["level", "selfness", "racecar", "dinosaur"]

# palindromes = words.select {|word| word == word.reverse }

# p palindromes

#----------- the .reject method on an array
# animals = ["cat", "cow", "bird", "lion", "elephant"]

# reject_results = animals.reject {|animal| animal.include?('c')}
# p reject_results

#----------- the unpack a mmultidimensional array
# users = [["Bob", 23, "male"],["Mary", 33, "female"],["Larry", 63, "male"]]

# bob, mary, larry = users
# p bob
# p mary
# p larry

#----------- the .partion method
# foods = ['Steak', 'Veggie', 'Steak', "Kale", "Tofu", "Tuna Steak"]

# good, bad =  foods.partition {|food| food.include?("Steak")}
# p good
# p bad

# def evens_and_odds(numbers)
#   # Write your code here
#   even, odd = numbers.partition {|number| number.even?}
# end

# p evens_and_odds([15,23])

#----------- coding exercise 2 - even or odd

