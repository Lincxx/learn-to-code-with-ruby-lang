#----------- intro to methods
# def introduce_myself
#   puts "I am handsome"
#   puts "I am talented"
#   puts "I am brilliant"
# end

# introduce_myself #best practice is not to use parentheses, unless we are passing args

# 4.times do 
#   introduce_myself
# end

#----------- local variable
# def introduce_myself
#   expression = "I am a genius"
#   puts expression
# end

# introduce_myself

#----------- parameters and arguments
# def praise_person(name, age)
#   puts "#{name} is amazing"
#   puts "#{name} is charming"
#   puts "#{name} is telented"
#   puts "#{name}'s age in 5 years will be #{age + 5}"
# end

# praise_person("Christopher", 23)
# praise_person("Dave", 34)
# # praise_person("Pizza", "Tim", 23) give an error wrong number of arguments (given 3, expected 2) (ArgumentError)

#----------- return values I
# def add_two_numbers(num1, num2)
#   puts "OK, I'm solving your math problem!"
#   return num1 + num2
# end

# # implict return
# def add_two_numbers(num1, num2)
#   puts "OK, I'm solving your math problem!"
#   num1 + num2
# end

# puts add_two_numbers(3,4)

# # can use return to terminate 

#----------- return values II - default return values and the return of the puts
# def nothing # this will return nil

# end

# puts nothing.class

# def return_string
#   "what will be the return value here?"
# end

# def return_guess
#   puts "What will be the return value here?"
#   # nil will be the return
# end

# p return_guess.class

#----------- the if statement
# if 5 < 7 
#   puts "That math statement is true!"
# end

# password = "blah"

# if password == "topsecret"
#   puts "Congrats, you've logged into our system"
# end

# word = "zebra"

# if word.length == 8
#   puts "that word has 8 letters"
# end

# if word.include?("eb")
#   puts "Your word has eb in it"
# end

# if 5.odd?
#   puts "That number is odd"
# end

#----------- truthiness and falsiness
# false and nil are falsy and everything else is truthy

#----------- if elsif
# color = "Green"

# if color == "Red"
#   puts "Red is rad"
# elsif color == "Green"
#   puts "Green is great"
# elsif color == "Yellow"
#   puts "Yellow is...yellow"
# end

# number = 55

# if number < 25
#   puts "that's a low number"
# elsif number < 50
#   puts "that's a number in the middle"
# elsif 
#   puts "that's a big number"
# end

#----------- the else keyword
# grade = "C"

# if grade == "A"
#   puts "That's an excellent grade. Good job"
# elsif grade == "B"
#   puts "That's a great grade"
# else
#   puts "Unacceptable"
# end

# def odd_or_even(number)
#   if number.odd?
#     "odd number" 
#   else
#     "even number"
#   end
# end

# p odd_or_even("f")

#----------- mulitiple conditions with && operator
# age = 24
# ticket = "Gereral Admission"
# id = true

# if age > 21 && ticket == "Gereral Admission" && id == true
#   puts "Congratulations, welcome to the show!"
# else
#   puts "You are not the proper age or don't have a ticket"
# end

# # clean up the code a little bit
# if age > 21 && ticket == "Gereral Admission" && id
#   puts "Congratulations, welcome to the show!"
# else
#   puts "You are not the proper age or don't have a ticket"
# end

# # clean up the code a little bit ticket is truthy and so is id
# if age > 21 && ticket && id
#   puts "Congratulations, welcome to the show!"
# else
#   puts "You are not the proper age or don't have a ticket"
# end

#----------- mulitiple conditions with || operator
# budget = 5
# price = 10
# mood = "Happy"

# if budget > price || mood == "Happy"
#   puts "I'm going to buy the item!"
# end

#----------- parentheses and precedense
# def authenticate_agent(rank, name, credentials)
#   if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
#     puts "Access granted, please proceed to Intelligence department"
#   else
#     puts "Access deneied, #{name}"
#   end
# end

# authenticate_agent("007", "Mary Bond", "Spy")
# authenticate_agent("007", "James Bond", "Spy")


#----------- nested if statements
# def meal_plan(time_of_week, time_of_day)
#   if time_of_week == "weekday"
#     if time_of_day == "breakfast"
#       "Cereal"
#     elsif time_of_day == "lunch"
#       "Sandwich"
#     elsif time_of_day == "dinner"
#       "Chicken Nuggets"
#     end
#   elsif time_of_week == "weekend"
#     if time_of_day == "breakfast"
#       "Pancakes"
#     elsif time_of_day == "lunch"
#       "Wrap"
#     elsif time_of_day == "dinner"
#       "Pizza"
#     end
#   end
# end

# p meal_plan("weekend", "dinner")
# p meal_plan("weekday", "dinner")
# p meal_plan("weekday", "lunch")

#----------- the .reponds_to? method
# num = 100 

# p num.next
# p num.respond_to?("next")
# p num.respond_to?("even?")
# p num.respond_to?("length")

# if num.respond_to?("next")
#   p num.next
# end

# if num.respond_to?("length")
#   p num.length
# end

# puts "Hello".respond_to?("length")
# puts "Hello".respond_to?(:length)  # symbol name of the method, this will take up less memory comapred to a string version of it, thus being faster
# puts "Hello".respond_to?("class")
# puts "Hello".respond_to?("upcase")
# puts "Hello".respond_to?(:upcase)
# puts "Hello".respond_to?("odd?")



#----------- ternary operator
# if 1 < 2 
#   puts "Yes, it is!"
# else
#   puts "No, it's not!"
# end


# puts 2 < 2 ? "Yes, it is!" : "No, it's not!"


# puts "yes" == "yes" ? "the two are eqaul" : "the two are not equal"
# puts "yes" == "no" ? "the two are eqaul" : "the two are not equal"

# def even_or_odd(number)
#   number.even? ? "That number is even" : "That number is odd"
# end

# p even_or_odd(2)
# p even_or_odd(3)

#----------- default or optional parameters
# def make_phone_call(number, international_code = 1, area_code = 810)
#   puts "Calling #{international_code}-#{area_code}-#{number}"
# end

# make_phone_call("238-3805", 4)

#----------- call a method from another method or interpoated string
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def calculator(a, b, operation = "add")
  if operation == "add"
    # add(a,b)
    "The result of adding is #{add(a,b)}"
  elsif operation == "subtract"
    subtract(a,b)
  elsif operation == "multiply"
    multiply(a,b)
  else
    "That is not a real math operation"
  end
end

p calculator(2,3)