#----------- create a line
puts "hi there"
puts "I can also include chars and numbs"

name = "jeremy"
age = 44
puts name, age

empty = ""
p empty.length

p name.class

# alt syntax
cool = String.new("This is cool")
p cool

puts 5.to_s.class

#----------- multiline string
words = <<MLS
this is 
a 
   multi
line 
string
MLS

p words
puts words
print words


#----------- escape characters
puts "Juilet said 'Goodbye' to Romeo"
puts 'Juilet said "Goodbye" to Romeo'
puts "Juilet said \"Goodbye\" to Romeo"
puts "Lets go\n now"
puts "Juilet said\t\n this is cool"

#p is good to use if you are looking for line break or new lines

#----------- single quotes vs double quotes
puts "Hello\nworld"
puts 'Hello\nworld'
# interpolation doesn't work with single quotes

# ---------------equality and inequality
a = "Hello"
b = "hello"
c = "Hello"

p a == "Lion"
p a == b
p a == c
p a != b

p "apple" < "banana"
p "apple" > "banana"

# capital letters come before lower case number
p "apple" > "Banana"

#----------- concatenate strings
first_name = "Harry "
last_name = "Potter"

p fist_name + last_name

first_name = fist_name + last_name
p fist_name

fist_name += last_name
p fist_name

# this will overwrite the variable
p fist_name.concat(last_name)

p first_name << last_name

p first_name.prepend(last_name)

#----------- .length and .size
a = "hello world"
b = "hi, my name is Boris"
c = " "
d = ""

p a.length
p b.length
p c.length
p d.length

p a.size
p b.size
p c.size
p d.size

p a.length.class
p a.length.odd?
p a.length.odd?.class

#----------- extract single character from string
 story = "Once upon a time in a land far, far away..."
 p story.length

p story[3]
p story[-3]
p story[100]

# # slice method
p story.slice(3, 4)
p story.slice(-3)

# #same results
p story[0, story.length]
p story.slice(0, story.length)

# #same results
p story[-7, 5]
p story.slice(-7, 5)

#----------- extract mulitple characters from string
# range object - this is inclusive
# p story[27..39] with 2 dots inclusive
# p story[27...39] with 3 dots exclusive
story = "Once upon a time in a land far, far away..."

p story[27..39] # range
p story.slice(27..39)

p story[27...39] 
p story.slice(27...39)

p story[32..100] # ruby is smart enough to stop at the end of the string
p story[32..2000] # ruby is smart enough to stop at the end of the string

p story[25..-9] 
p story.slice(25..-9)

#----------- overwrite characters in a string
thing = "rocket ship"

thing[0] = "p"

p thing

thing[1] = "a"

p thing

thing[9] = "o"
p thing

fact = "I love blueberry pie"
p fact

fact[7, 4] = "rasp"
p fact

fact[7..10] = "blue"
p fact

fact[2..5] = "absolutely adore"
p fact

#----------- case methods (of the string)

# capitalize - will cap the first letter and lower case the rest, even if there are many words
puts "hello".capitalize
puts "hello world".capitalize 
puts "hello World".capitalize 

puts "boris123".upcase
puts "blah blah blah".upcase

puts "THIS IS ME SCREAMING".downcase

puts "JEreMy".swapcase


#----------- .reverse method on a string
puts "Ruby".reverse
puts "!@*$".reverse.class
puts "Ruby is fun".upcase.reverse.downcase

#----------- bang methods on strings
# permently mutate (change) a string
word = "hello"
p word.capitalize! #pretty much just overwrite
p word

word.upcase!
p word

word.downcase!
p word

word.reverse!
p word

word.swapcase!
p word

#----------- .include? (return ture or false) method (predicate methods)
name = "Snow White"

p name.include?("S")
p name.include?(" ")
p name.include?("  ")
p name.downcase.include?("w")
p name.downcase.include?("snow")
p name.downcase.include?("rain")
p name.downcase.include?("it")
p name.downcase.include?("sit")

#----------- .empty? (return ture or false) method (predicate methods) and nil?
p "".empty?
p "content".empty?

p "".nil?

name = "Donald Duck"
last_name = name[100, 4] # my mistake here
p last_name.nil?

last_name = name[3, 4] # no mistake here
p last_name.nil?

