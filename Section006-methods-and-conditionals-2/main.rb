#----------- case statement
def rate_my_food(food)
 case food 
 when "Steak"
  "Pass the steak sauce!"
 when "Sushi"
  "My favorite"
 when "Tacos", "Burritos", "Quesadillas"
  "Cheesy and filling"
 when "Brussel Sprouts"
 else
  "I don't know about that food"
 end
end

p rate_my_food("Steak")
p rate_my_food("Burritos")
p rate_my_food("Yogurt")

def calculate_school_grade(grade)
  case grade
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  end
end

more of a compact way of doing it
def calculate_school_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

p calculate_school_grade(95)
p calculate_school_grade(80)
p calculate_school_grade(73)
p calculate_school_grade(66)
p calculate_school_grade(23)

#----------- negation with !
user = "free"

if user != "subscriber"
  puts "free access"
end

puts !true
puts !false
puts !1
puts !""
puts !!""

#----------- unless keyword
password = "dominoes"

if password  != "whiskers"
  puts "not allowed"
end

unless password  == "whiskers"
  puts "not allowed"
else
  puts "that's the right password"
end

unless password.include?("a")
  puts "it does contain the letter"
end

#----------- case statement
def rate_my_food(food)
 case food 
 when "Steak"
  "Pass the steak sauce!"
 when "Sushi"
  "My favorite"
 when "Tacos", "Burritos", "Quesadillas"
  "Cheesy and filling"
 when "Brussel Sprouts"
 else
  "I don't know about that food"
 end
end

p rate_my_food("Steak")
p rate_my_food("Burritos")
p rate_my_food("Yogurt")

def calculate_school_grade(grade)
  case grade
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  end
end

# more of a compact way of doing it
def calculate_school_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

p calculate_school_grade(95)
p calculate_school_grade(80)
p calculate_school_grade(73)
p calculate_school_grade(66)
p calculate_school_grade(23)

#----------- negation with !
user = "free"

if user != "subscriber"
  puts "free access"
end

puts !true
puts !false
puts !1
puts !""
puts !!""

#----------- unless (execute if false) keyword
password = "dominoes"

if password  != "whiskers"
  puts "not allowed"
end

unless password  == "whiskers"
  puts "not allowed"
else
  puts "that's the right password"
end

# output this line if the password contains an a
unless password.include?("a")
  puts "it does not contain the letter"
else 
  puts "it does contain the letter"
end

#----------- while keyword
i = 1
while i < 10
  puts i
  i += 1
end

status = true

while status
  print "Please enter username "
  username = gets.chomp.downcase
  print "Please enter password "
  password = gets.chomp.downcase

  if username == "jeremy" && password == "password"
    puts "Entry granted. The nuclear codes are..."
    status = false
  elsif username == "quit" || password == "quit"
    puts "Good bye"
    status = false
  else
    puts "Incorrect combination, try again or enter 'quit' to leave "
  end
end

i = 2 
while i.even?
  puts i
  i += 1  
end

#----------- until keyword
i = 1 

while i < 10
  puts i
  i += 1
end

until i > 9
  puts i 
  i += 1
end

#----------- challenge fizzbuzz
# if the number is divisible by 3, output fizz
  # if the number is divisible by 5, output buzz
  # if the number is divisible by 3 and 5, output fizzbuzz
# def fizzbuzz(number)
#   if number % 3 == 0 && number % 5 == 0
#     "fizzbuzz"
#   elsif number % 5 == 0
#     "buzz"
#   elsif number % 3 == 0
#     "fizz"
#   end
# end

# i  = 1
# while i < 21
#   p fizzbuzz(i)
#   i += 1
# end

def fizzbuzz(number)
  i = 1
  while i < number
    if i % 3 == 0 && i % 5 == 0
      puts "fizzbuzz"
    elsif i % 5 == 0
      puts  "buzz"
    elsif i % 3 == 0
      puts  "fizz"
    end
    i += 1
  end
end

fizzbuzz(25)



#----------- statement modifiers / inline modifiers
number = 5000 
verifies = true

if number > 2500 
  puts "huge number!"
end

# inline modifiers
puts "huge number!" if number > 2500

x = 8 
unless x > 10
  puts "x is not greater than 10"
end

# inline modifiers
puts "x is not greater than 10" unless x > 10


#----------- conditional assignment
# if the assigment is nil then it will be assigned to the value on the right
y = nil
p y 

y ||= 5 
p y 


gretting = "Hello"
extraction = 6
letter = gretting[extraction]
letter ||= "Not found"
p letter
