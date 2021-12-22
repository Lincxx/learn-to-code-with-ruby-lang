#----------- create a line
# puts "hi there"
# puts "I can also include chars and numbs"

# name = "jeremy"
# age = 44
# puts name, age

# empty = ""
# p empty.length

# p name.class

# # alt syntax
# cool = String.new("This is cool")
# p cool

# puts 5.to_s.class

#----------- multiline string
# words = <<MLS
# this is 
# a 
#    multi
# line 
# string
# MLS

# p words
# puts words
# print words


#----------- escape characters
# puts "Juilet said 'Goodbye' to Romeo"
# puts 'Juilet said "Goodbye" to Romeo'
# puts "Juilet said \"Goodbye\" to Romeo"
# puts "Lets go\n now"
# puts "Juilet said\t\n this is cool"

#p is good to use if you are looking for line break or new lines

#----------- single quotes vs double quotes
# puts "Hello\nworld"
# puts 'Hello\nworld'
# interpolation doesn't work with single quotes

# ---------------equality and inequality
# a = "Hello"
# b = "hello"
# c = "Hello"

# p a == "Lion"
# p a == b
# p a == c
# p a != b

# p "apple" < "banana"
# p "apple" > "banana"

# capital letters come before lower case number
# p "apple" > "Banana"

#----------- concatenate strings
# first_name = "Harry "
# last_name = "Potter"

# p fist_name + last_name

# first_name = fist_name + last_name
# p fist_name

# fist_name += last_name
# p fist_name

# this will overwrite the variable
# p fist_name.concat(last_name)

# p first_name << last_name

# p first_name.prepend(last_name)

#----------- .length and .size
# a = "hello world"
# b = "hi, my name is Boris"
# c = " "
# d = ""

# p a.length
# p b.length
# p c.length
# p d.length

# p a.size
# p b.size
# p c.size
# p d.size

# p a.length.class
# p a.length.odd?
# p a.length.odd?.class

#----------- extract single character from string
story = "Once upon a time in a land far, far away"
p story.length

p story[3]
p story[-3]
p story[100]

# slice method
p story.slice(3, 4)
p story.slice(-3)

#----------- overwrite characters in a string
#----------- case methods
#----------- .reverse method on a string
#----------- bang methods on strings
#----------- .include? method
#----------- .empty? method

