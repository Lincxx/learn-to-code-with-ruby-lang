#------------numbers and .class method-------
# p 5.next
# p -2.class
# p 2.34.class
# p -3.4.next_float
# p 99999999999999999999999999999999999999999999999999999999999999999999999999999.next

#------------convert numbers to strings and vice versa-------
# str = "5"
# p str.class
# p str.to_i.class
# p str.to_f.class

# # this is still a str
# p str

# age = 25
# p age.class
# p age.to_s.class

#------------intro booleans-------
# p 5 < 10
# p 10 > 12

# handsome = true
# dumb = false

# p handsome.class
# p dumb.class

#------------the .odd? and .even? predicate methods-------
# p 2.odd?
# p 2.even?
# p 3.odd?
# p 3.even?
# # p 3.23.even? undefined method `even?' for 3.23:Float (NoMethodError)
# # p 3.23.odd? undefined method `even?' for 3.23:Float (NoMethodError)
# # p "3".even? undefined method `even?' for "3":String (NoMethodError)

#------------comparsion with the equality (==) operator-------
# p 10 == 10
# p 10 == 11

# a = 10 
# b = 5
# c = 5

# p c == a
# p c == b

# p "5" == 5
# p 5 == 5.0 #ruby will look at this as true, but this can cause issues down the road
# # to fix this we could
# p 5.to_f == 5.0

#------------comparsion with the inequality (!=) operator-------
# p 10 != 5
# p 10 != 10
# p true != false
# p "hello" != "bye"
# p "hello" != "Hello"
# p "hello".capitalize != "Hello"
# p "hello" != "Hello".downcase
# p "123" != 123

#------------less than and greater than operators-------
# p 1 < 9
# p 1 > 9
# p 1 >= 9
# p 1 <= 9

# p 23 >= 23.4

#------------arithmetic methods and basics arguments-------
# p 1.next

# p 1 + 2
# p 1.+(2)
# p 1.*(2)
# p 1.-(2)
# p 1.div(2)
# p 1./(2)
# p 1.%(2)
# p 1.modulo(2)

#------------intro to object methods with parameter (the .between?)-------
# https://apidock.com/ruby/Comparable/between%3F
# p 3.between?(1,4)
# p 'cat'.between?('ant', 'horse')
# p 'gnu'.between?('ant', 'dog')
# p 5.3.between?(8.8, 9.6)

#------------float methods-------
# p 10.5.floor
# p 10.5.ceil

# p 3.6.round
# p 3.14159.round(3)

# p -35.76.abs

#------------assignment operators-------
# a = 10
# a = a + 5
# # better way 
# a += 5


#------------intro to blocks with the .times method-------
# # suited for one line
# 5.times {puts "This is really cool"} 

# # suited for more than one line
# 5.times do 
#   puts "This is really coo"
#   puts "This is neat"
# end

# 3.times do |count|
#   puts count
# end

# 3.times { |count| puts count} 

# 10.times {|i| puts (i+1) * 3 }

#------------.upto and .downto methods-------
# 5.downto(1) { |num| puts num }

# 5.downto(0) do |num|
#   puts "#{num} here we go" 
# end

# 1.upto(5) { |num| puts num }

#------------.step method-------
1.step(100, 2) { |num| puts num }
1.step(100, 2) do  |num| 
  puts " #{num} - hi"
end