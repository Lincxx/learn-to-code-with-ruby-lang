#----------- the object pointers ans object copies
# All Ruby obj live on the heap, an area of computer memory
# Ruby creates space for object on the heap
# An object returns a reference to its memory address when it is created
# Variavles do not hold the object, they hold the refernce to the object
# If the object is the house, the variable is the address

# Pointers to the same object
# If a variable is assigned to another variable, it will point to the same object
# The variable becomes an alias for the object
# Thus, any modification to the object will be reflected in both variables
# The object_id methods returns an objects's location in memory

a = [1,2,3]
b = a # b is now pointing to the same location in memory, so if we modify one, we modify both
b = [1,2,3]

p a.object_id
p b.object_id

p a.object_id == b.object_id

if we want a copy we can use .dup, this way we don't modify the org array
c = [1,2,3]
d = c.dup

p c.object_id == d.object_id


# ---------- the splat arg
def sum(*numbers)
  sum = 0 
  numbers.each{ |num| sum += num}
  sum
end

p sum(2,3,4,5,6,7)
p sum

#----------- the .any? and .all?
p [1,3,5,7,2].any? do |number|
  number.even?
end

p [1,3,5,7,2].any? do |number|
  number.odd?
end

res =  [1,3,5,7,2].all? do | number| 
  number.odd?
end

p res

p [1,3,5,7,2].all? { | number| number.odd?}

https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482408#questions/7607708

#----------- the .find  (get the first result ) and .detect (get the first result ) 
words = ["dictionary", "refrigerator", "platypus", "microwave"]

p words.find {|word| word.length > 8}
p words.find {|word| word.length > 10}

p words.detect {|word| word.length > 8}
p words.detect {|word| word.length > 10}

lottery = [4,8,15,16,23,42]
result = lottery.find do |number|
  number.odd?
end

p result

result = lottery.find { |number|  number.odd? }
result = lottery.reverse.find { |number|  number.odd? }

p result

#----------- the .uniq - will return a new array with all the dups removed
numbers = [1,2,3,2,7,7,7,8,9,1]
p numbers.uniq

#----------- the .compact or .compact!
p [1,2,3,4].compact
p [1,2,3,nil, nil, 4].compact

#----------- the .inject and .reduce both are the same
result = [10, 20, 30, 40].reduce(0) do |previous, current|
  puts "previous value is #{previous}"
  puts "current value is #{current}"
  previous + current
end

puts result

# doing a product
result = [3,4,5,6,7].inject(1) do |previous, current|
  puts "previous value is #{previous}"
  puts "current value is #{current}"
  previous * current
end

puts result

#----------- the .flatten return a sigle array, there is also .flatten!
registration = [
  ["bob", ["jack"], "dan"],
  ["jeff", ["jeremy", "tracy"]],
  ["tim", "dan", "fred"]
]

p registration.flatten


#----------- the .zip
names = ["bo", "moe", "joe"]
registrations = [true, false, true]

p names.zip(registrations)

p [1,2,3].zip([4,5,6], ["A", "B","C"])

#----------- the .sample - return a random element
flavors = ["Chocolate", "Vanilla", "Strawberry", "Rum Raisin"]
puts flavors.sample

puts flavors.sample(2) # 1 or more we will get back an array
puts flavors.sample(10) # 1 or more we will get back an array

#----------- multiply an array with asterisk symbol
puts 4 * 3
puts "Ruby" * 3
p [1,2,3] * 5 # 15 elements in an array

#----------- union - combine arrays and exclude dups
p [1,2,3] | [3,4,5] # short syntax
p [1,2,3].|([3,4,5])

#----------- remove array item that exists in another array 
puts [1,1,2,2,3,3,3,4,5] - [2,3]
p [1,1,2,2,3,3,3,4,5] - [2,3] # short syntax
p [1,1,2,2,3,3,3,4,5].-([2,3])

#----------- array intersection with the ampersand symbol
p [1,1,2,3,4,5] & [1,2,5,8,9]
