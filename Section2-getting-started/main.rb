# ------ PUTS -------------
# add a line break
# puts "Hello World"
# puts 5 
# puts 1.2 
# puts true 
# puts 4 + 3
# #puts "4" + 3 no implicit conversion of Integer into String (TypeError)
# puts "4" + "3"
# puts #adds a line break
# puts "Hi " + "there"

# ------ PRINT -------------
# this doesn't add a line break
# print " "
# print "hello"
# print "world"

# ------ P -------------
#
# p "Mike Myers"
# p 5
# p "this is a 
# line break"

# ------ Arithmetic -------------
# p 1 + 4
# p 10 - 4
# p 10 * 4
# p 10 / 3 # int math
# p 10 / 3.0 # float math
# p 10.0 / 3.0 # float math
# p 10.0 / 3 # float math
# p "School" + "bus"

# p 23 % 4
# p 2**4
# p -0.75 / 2

# ------ Comments -------------
# single line
=begin
  this is a multi-line comment
=end

# ------ Varibles -------------
# first_name = "jeremy"
# last_name = "lincoln"
# age = 44
# is_handsome = true

# puts first_name
# puts last_name
# puts first_name + " " +last_name
# puts age
# puts is_handsome

# puts age + 5

# ------ Parallel var assignment and swapping var values -------------
# a = 10 
# b = 20 
# c = 30
# parallel
# a, b, c, = 10, 20, 30
# p a, b, c 

# swapping
# a = 2
# b = 1

# a, b = b, a

# p a, b

# ------ Constants -------------
# NAME = "Jeremy"
# PI = "3.14159"

# p "My name is #{NAME}"

# NAME = "Cris"
# p "My name is #{NAME}"

# ------ Intro to object method -------------
# p "hello world".length
# p "hello world".upcase
# p "hello world".downcase
# p "hello world".capitalize

# foo = "hello world"
# p foo.length
# p foo.upcase

# p 10.next
# puts "hello world"
# puts "hello world".inspect # is equal to using the p 

# ------ Return values and nil object -------------
# this lesson was done in IRB
# ruby everything has to return something and sometime it returns nil.
#puts 7 + 5 #put this into irb and we will get back
# 12
# => nil

# ------ String interpolation -------------
# p 5.next
# p 5.to_s

# name = "Jeremy"
# p "Hello #{name}, how are you?"

# age = 44
# p "I am " + age.to_s + " years old"

# p "I am #{age} years old" 

# p "The result of adding 1 + 1 is #{1+1}"

# ------ Gets method and chomp method -------------
puts "What is your name"
name = gets.chomp

puts "Great! What's your age?"
age = gets.chomp.to_i

p "Hello #{name}, #{age}, what a great age"


