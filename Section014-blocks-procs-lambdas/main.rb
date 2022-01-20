#----------- intro to blocks
# A block is a collection of code to be executed
# Blocks must be attached to a method call
# Blocks alter the execution of the method
# A block is not an argument/parameter to the method
# Blocks can be defined with {} or do end
# a block can get or update the value of local variables within the block

## Methods vs. Blocks
# Methods can be invoked over and over
# In comparison, a block will only be called once, then disappear
# A block isolates actions away from the method

# eg, each
# [3,4,5,6].each { | num | puts num ** 2 }
# evens = [2,3,4,6,7,10]

# evens.each { | num | puts num ** 3 }

# colors = ["red", "purple", "green"]
# statements = colors.map { | color | "#{color} is a great color" }
# puts statements

#----------- the yield keyword
# the yield keyword is expecting a block to be passed it 
# no block given (yield) (LocalJumpError)
# def pass_control
#   puts "this is inside the method!"
#   yield # Pass control from method to the block
#   puts "Now I'm back inside the method"
# end

# # pass_control { puts "Now I'm inside the block"}
# pass_control  do 
#   puts "Now I'm inside the block"
# end

# def who_am_i
#   adjective = yield
#   puts "I am very #{adjective}"
# end

# who_am_i {"handsome"}
# who_am_i {"fugly"}

# def multiple_pass
#   puts "Inside the method"
#   yield
#   puts "Back inside the method"
#   yield
# end

# multiple_pass {puts "Now I'm inside the block"}

#----------- Procs 1
# functions like a saved block
cubes = Proc.new { | num | num ** 3 }
squares = Proc.new { | num | num ** 2 }

a = [1,2,3,4,5]
b = [6,7,8,9,10]
c = [11,12,13,14,15]

# iterate over each array and cube them
# a_cubes = a.map {| num | num ** 3}

a_cubed = a.map(&cubes)
b_cubed = b.map(&cubes)
c_squared = c.map(&squares)

p a_cubed
p b_cubed
p c_squared


a_cubes, b_cubes, c_cubes = [a,b,c].map { | array | array.map(&cubes) }

p a_cubes
p b_cubes
p c_cubes


currencies = [10,20,30,40,50]

to_euros = Proc.new { | currency | currency * 0.95 }
to_rupees = Proc.new { | currency | currency * 68.13 }
to_pesos = Proc.new { | currency | currency * 20.67 }

p currencies.map(&to_euros)
p currencies.map(&to_rupees)
p currencies.map(&to_pesos)

ages = [10, 60, 33, 44, 25, 93]

is_old = Proc.new do |age|
  age > 55
end

p ages.select(&is_old)
p ages.reject(&is_old)

#----------- The .block_given? method

def pass_control_on_condition
  puts "Inside the method"
  if block_given?
    yield
  end
  # since there is only one and simple if statement we can do it like this
  # yield block_given?
    
  puts "Back inside the method"
end

pass_control_on_condition 
pass_control_on_condition {puts "hi"}
pass_control_on_condition do 
  puts "hi 3"
end

#----------- yielding with arguments
def speak_the_truth
  yield "Jeremy" if block_given?
end

speak_the_truth { |name|  puts "#{name} is brilliant!"}


def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth("Jeremy") do |name|
  puts "#{name} is pretty cool"
end

speak_the_truth("Jackie") {|name| puts "#{name} is pretty cool"}

def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth("Jackie") do |name, age| 
  p name
  p age
  puts "#{name} is pretty cool and age is #{age}"
end

def number_evaluation(num1, num2, num3)
  puts "Inside the method"
  yield(num1, num2, num3)
end

result = number_evaluation(5,10,15) {|num1, num2, num3| num1 * num2 * num3}

p result


#----------- a custom .each method
def custom_each(array)
  i = 0 
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = ["Jeremy", "Rhonda", "Kristacy"]
numbers = [10, 20, 30]

custom_each(names) do |name|
  puts "The length of #{name} is #{name.length}"
end

custom_each(numbers) do |number|
  puts "The square of #{number} is  #{number ** 2}"
end

#----------- Procs 2
def greeter
  puts "I'm inside the greeter metod"
  yield
end

phrase = Proc.new do
  puts "Inside the proc"
end

greeter(&phrase)

hi = Proc.new {puts "Hi there"}
hi.call # invokes the proc

5.times(&hi)


#----------- pass a ruby method as proc
#  convert string array to an integer array
p ["1", "2", "3"].map { |number| number.to_i}

# a shorter way with proc
p ["1", "2", "3"].map(&:to_i)

p [10,14,25].map(&:to_s)

p [1,2,3,4,5].select {|number| number.even?}
p [1,2,3,4,5].select(&:even?)
p [1,2,3,4,5].reject(&:odd?)

#----------- methods with proc parameters
def talk_about(name, &myproc)
  puts "Let me tell you about #{name}."
  myproc.call(name)
end

good_things = Proc.new {|name| puts "#{name} is a fun guy"}
bad_things = Proc.new {|name| puts "#{name} is a fungi"}

talk_about("Jeremy", &good_things)
talk_about("Jeremy", &bad_things)


#----------- intro to lambdas
# squares_lambda = lambda { |number| number ** 2 }
# squares_proc = Proc.new { |number| number ** 2 }

# p [1,2,3].map(&squares_proc)
# p squares_proc.call(5)

# p [1,2,3].map(&squares_lambda)
# p squares_lambda.call(5)

# difference between proc and lambda
 some_proc = Proc.new { |name, age| "Your name is #{name} and your age is #{age}" }
# proc doesn't care about missing arguments 
 p some_proc.call("Jeremy", 45)
 p some_proc.call("Jeremy")

#  lambda does care aobout missing or extra arguments
some_lambda = lambda { |name, age| "Your name is #{name} and your age is #{age}" }
p some_lambda.call("Jeff", 45)
# p some_lambda.call("Jeff", 34, 34)

def diet 
  status = lambda { return "You gave in" } 
  status.call
  "You completed the diet!"
end

p diet

def diet 
  status = Proc.new { return "You gave in" } 
  status.call
  "You completed the diet!"
end

p diet


#----------- lambdas effiency example
# def convert_to_euros(dollars)
#   if dollars.is_a?(Numeric)
#     dollars * 0.95
#   end
# end

# def convert_to_pesos(dollars)
#   if dollars.is_a?(Numeric)
#     dollars * 20.68
#   end
# end

# def convert_to_rupees(dollars)
#   if dollars.is_a?(Numeric)
#     dollars * 68.13
#   end
# end

# shrink the methods
# def convert_to_euros(dollars)
#   dollars * 0.95 if dollars.is_a?(Numeric)
# end

# def convert_to_pesos(dollars)
#   dollars * 20.68 if dollars.is_a?(Numeric)
# end

# def convert_to_rupees(dollars)
#   dollars * 68.13 if dollars.is_a?(Numeric)
# end


# single method
to_euros = lambda { |dollars| dollars * 0.95 }
to_pesos = lambda { |dollars| dollars * 20.67}
to_rupees  = lambda { |dollars| dollars * 68.13 }

# convert this to except a lambda
# def convert(dollars, currency)
#   yield(dollars, currency) if dollars.is_a?(Numeric)
# end

def convert(dollars, currency_lamba)
  currency_lamba.call(dollars) if dollars.is_a?(Numeric)
end

# convert these into lambdas
# p convert(1000, "euros") { |dollars| dollars * 0.95 }
# p convert(1000, "pesos") { |dollars| dollars * 20.67}
# p convert(1000, "rupess") { |dollars| dollars * 68.13 }


## overall this reads better
p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_rupees)


p [1000, 2000, 4000].map(&to_rupees)