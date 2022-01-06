#----------- intro to arrays
# Everything in Ruby is an object
#  the array itseld is an object. it acts as a container for other objects
# p []
# p [].class
# numbers = [1,2,3,4]

#----------- create an array with bracket syntax
# numbers = [1,2,3,4]
# puts numbers
# p numbers
# print numbers

# toys = ["Teddy Bear", "Super Soaker", "Board Game"]
# p toys

# things = [4, true, "Hello", 10.99]
# registrations = [true, true, false, true, false]

# multidemisional arrays
# students = [
#              ["Jeremy", 25, true], 
#              ["Sally", 23, true],
#              ["Frank", 33, false],
#             ]
# puts students

#----------- shorthand %w syntax to create an array of strings
# spaces are used to create a new element
# names = %w[Jack Jill John James]
# puts names

#----------- create an array with bracket syntax
# p [1,2,3].class

# Array.new(3) # total number of elements that will exist in the array
# p Array.new(10, true) # total number of elements that will exist in the array
# p Array.new(10, [1,2,3]) # total number of elements that will exist in the array

#----------- access single array element by index position
# fruits = ["Apple", "Orange", "Grape", "Banana"]
# p fruits.length # return the count of elements in the array

# p fruits[0]
# p fruits[1]
# p fruits[3]
# p fruits[50]
# p fruits[fruits.length - 1]
# p fruits[-1] # last element of the array
# p fruits[-3]

#----------- access single array element by .fetch
# names = ["Tom", "Cameron", "Bob"]

# p names[2]
# p names[100]

# p names.fetch(1)
# p names.fetch(100, "Unknown")

#----------- extract sequential array elements with bracket syntax
# numbers = [12,3,4,5,6,7,8,9]

# p numbers[2,4]
# p numbers[0,1]
# p numbers[4,100] # this still work, it will just give us all the elements in the array (Ruby is smart)


#----------- access sequential array elements with range object
# numbers = [12,3,4,5,6,7,8,9]
# p numbers[4..5]
# p numbers[4...6]
# p numbers[3..3]
# p numbers[3...3]

#----------- access multiple array elements with the .value_at method
# channels = ["CBS", "FOX", "NBC", "ESPN","CW"]

# p channels.values_at(0)
# p channels.values_at(4)
# p channels.values_at(0,4,3)
# p channels.values_at(1,-2)
# p channels.values_at(1, 1, 2)
# p channels.values_at(1, 1, 6) # we get nil for 6

#----------- the slice method
# numbers = [0,2,4,6,8,10,12,14]

# p numbers.slice(3)
# p numbers.slice(3)
# p numbers.slice(3, 2)
# p numbers.slice(4..6)
# p numbers.slice(4..6)
# p numbers.slice(4...6)

#----------- overwrite one or more array elements
# fruits = ["Apple", "Orange", "Grape", "Banana"]

# # fruits[1] = "Watermelon"
# # p fruits

# fruits[4] = "Raspberry"
# p fruits

# fruits[10] = "kiwi"
# p fruits

# fruits[3,2] = ["Dragonfruit", "Canteloupe"]
# p fruits

# fruits[0..2] = ["Blackberry", "Orange", "Pears"]
# p fruits

# fruits[0..3] = ["Peach"] # ruby will remove what hasn't been overwritten
# p fruits


#----------- the .length, .size, .count methods on an array
# p [1,2,3,4].length
# p [1,2,3,4].size # this is the same as length. Might be a little faster
# p [1,2,3,4, 2,3,2].count# returns like size and length
# p [1,2,3,4, 2,3,2].count(2) # return the number of same elements
 
#----------- the .empty? and .nil? methods on an array
# puts [1,2,3].empty?
# puts [nil, nil].empty?
# puts [nil, nil].nil?

# letters = ("a".."j").to_a
# character = letters[25]
# p character.nil?

#----------- the .first and .last methods
# arr = [1,3,5,7,9,15,21,18,6]
# p arr.first
# p arr.last
# p arr.first(3)
# p arr.last(2)
# p arr.first(1)
# p arr.last(1)

# def custom_first(arr, num = 0)
#   return arr[0] if num == 0
#   arr[0, num]
# end

# p custom_first(arr)
# p custom_first(arr, 5)

# def custom_first(arr, num = 0)
#   return arr[-1] if num == 0
#   arr[-num..-1]
# end


# p custom_first(arr)
# p custom_first(arr, 5)

#----------- the .push method, the shovel operator, and the .insert method
# .psuh and the shovel operator mutates the array
# locations = ["House", "Airport", "Bar"]


# locations.push("Boathouse", "Saloon")
# p locations

# locations << "Boathouse"
# p location

# locations << "Boathouse" << "Saloon"
# p locations

# locations.insert(1, "Saloon")
# p locations

#----------- the .pop method
# arr = [1,2,3,4,5,6,7,8,9,10]
# p arr

# last_item =  arr.pop
# p last_item

# two_items = arr.pop(2)
# p two_items

#----------- the .shift and .unshift methods
# arr = [1,2,3,4,5,6,7,8,9,10]
# p arr
# extract = arr.shift

# extract_two = arr.shift(2)
# p arr

# arr.unshift(5)

# arr.unshift(500 ,300 ,200)
# p arr

#----------- equality and inequality operators with array


#----------- the spaceship


#----------- convert ranges to arrays with the .to_a method


#----------- the .is_a? predicate method
