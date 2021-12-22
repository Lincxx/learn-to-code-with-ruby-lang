# -------boolean
# p 5 < 10
# p 10 > 12

# handsome = true
# dumb = false

# p handsome.class
# p dumb.class


# --------odd? or even?
# p 2.odd?
# p 2.even?
# p 3.odd?
# p 3.even?
# # p 3.23.even? undefined method `even?' for 3.23:Float (NoMethodError)
# # p 3.23.odd? undefined method `even?' for 3.23:Float (NoMethodError)
# # p "3".even? undefined method `even?' for "3":String (NoMethodError)


# --------- equality operator
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


# --------- inequality operator
p 10 != 5
p 10 != 10
p true != false
p "hello" != "bye"
p "hello" != "Hello"
p "hello".capitalize != "Hello"
p "hello" != "Hello".downcase
p "123" != 123
