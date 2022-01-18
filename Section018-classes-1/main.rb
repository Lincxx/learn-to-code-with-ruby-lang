#----------- intro to classes
## Why do we need classes
# Ruby's built-in objects like arrays, hashes cannot represent everything
# What if we need to represent Users or Cars or Invoices?
# The goal of OOP is to use code to model real-list things as classes
# An object is a custom container for data. It is made from a class

## Object attributes and methods
# instance variables (attributes) are variables that belong to the object
# Attributes provide informationabout the objects current state
# instance methods interact w/ the obj. They belong to that object
# Encapsulation is an OOP concept that restricts direct access to an object.

## Classes and Objects
# A class is the blueprint, pattern, template, or outline for an obj.
# A object is an instance of the class. It is create from a the class.
# Instantiation is the process of creating an object from a the class.
# A class ic called an abstract type because it hides the complexity of interaction with the data, much like a method abstracts the complexity of a process

#----------- review of the .class method on ruby objects
# puts 5.class
# puts 8.class
# puts 8.class == 5.class

# puts 5.4.class
# puts 3.43.class

# puts 3.43.class == true.class

# puts "Hello".class  
# puts [1,2,3].class  
# puts lambda {}.class

#----------- the .superclass and .ancestors methods on a class
## The .class method and objects
# Objects receive their structure or design from classes
# The .class method returns the class the object was constructed from
# The object's class is itself another object

## The .superclss method on classes
# A superclass is the class that a current class inherits from. Inheritance follows an "is-a" structure
# the .superclass method is called on a class. It returns that parent class that the currentc class inherits from
#  The class that inherits from the superclass is called the subclass
# Every class in Ruby (except BasicObject at the top of the hierarchy) has at least one superclass

## The .ancestors method on classes
# a superclass is the class that a current class inherits from
# the .ancestor method can also be called on a class. It returns an array of all superclasses that the class inherits from

# p 5.class
# p 5.class.superclass
# p 5.class.superclass.superclass
# p 5.class.superclass.superclass.superclass

# p 5.class.ancestors # comparable and Kernel are modules

# #----------- the .methods method
# int_methods =  5.methods.sort
# float_methods = 2.3.methods.sort


# # & is union, recall from the arrays section
# puts int_methods & float_methods
# # - is minus (differnce in the 1st), recall from the arrays section
# puts int_methods - float_methods

# array_methods = [1,2,3].methods.sort
# hash_methods = {key: "value"}.methods.sort

# puts array_methods - hash_methods


#----------- create a class
# refer to gadget.rb

#----------- coding exercise 5 create a class


#----------- object aliases
# refer to gadget.rb

#----------- instance variables and the .initialize method
# Instance veriable are varabiles that belong to a specific object
# Instance variables define the object's properites or attributes
# The instance varaibles make up the object's state
# Each object can have a custom state

## Define an instance variable
# Instance variables begin with th e@ symbol (i.e. @name)
# The @ symbol is called a sigil, a special character that denotes the variable's scope
#  Without the @sigil, the variavle would be interpreted as a local variable to the method it is used in. 

## The initialize Method
# The initialize method is called immediately when an object is instantiated from a class with the new method
# The initialize method offers an opportunity to assign values to instance variables in order define the object's state
# If the initialize method is not defined in the class, each object is initialized with no state (like that Gadget objects in the previous lesson)
# The assignment of values to instance variables does not mean the values have to stay constant. The object's state can be altered later.

# class Gadget

#   def initialize
#     @username = "User #{rand(1..100)}"
#     @password = "topsecret"
#     @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
#   end

# end

# phone = Gadget.new
# puts phone.inspect
# p phone.instance_variables

# laptop = Gadget.new
# puts laptop.inspect
# p laptop



#----------- coding exercise 6 create classes with instance variables


#----------- instance methods
# class Gadget

#   def initialize
#     @username = "User #{rand(1..100)}"
#     @password = "topsecret"
#     @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
#   end

#   # instance method - we are referring to the instance variables
#   def info
#     "Gadget #{@production_number} has the username #{@username}"
#   end
# end

# phone = Gadget.new
# puts phone.inspect
# p phone.instance_variables
# p phone.info


# # p phone.methods.sort
# #here we can get the difference/s of methods
# puts phone.methods - Object.methods

#----------- coding exercise 7 instance methods


#----------- override the .to_s method
# class Gadget

#   def initialize
#     @username = "User #{rand(1..100)}"
#     @password = "topsecret"
#     @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
#   end


#   def to_s 
#     "Gadget #{@production_number} has the username #{@username}"
#   end
# end

# phone = Gadget.new
# puts phone.inspect
# p phone.instance_variables

# p phone.methods.sort
# p phone.respond_to?(:to_s)
# p phone.to_s



#----------- coding exercise 8 the .to_s method


#----------- the self keyword in an instance method
# class Gadget

#   def initialize
#     @username = "User #{rand(1..100)}"
#     @password = "topsecret"
#     @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
#   end


#   def to_s 
#     "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
#   end
# end

# phone = Gadget.new
# p phone.to_s


#----------- getter methods
# class Gadget

#   def initialize
#     @username = "User #{rand(1..100)}"
#     @password = "topsecret"
#     @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
#   end


#   def to_s 
#     "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
#   end

#   # eg, of getter methods
#   def username
#     @username
#   end

#   def production_number
#     @production_number
#   end

# end

# phone = Gadget.new
# p phone.username
# p phone.production_number
# puts phone.inspect

#----------- setter methods
# class Gadget

#   def initialize
#     @username = "User #{rand(1..100)}"
#     @password = "topsecret"
#     @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
#   end


#   def to_s 
#     "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
#   end

#   # eg, of getter methods
#   def username
#     @username
#   end

#   def production_number
#     @production_number
#   end

#   # eg, of setter methods, also called writer methods
#   def username=(new_username)
#     @username = new_username
#   end
  
#   def password=(new_password)
#     @password = new_password
#   end

# end

# phone = Gadget.new
# p phone.username
# p phone.production_number
# # p phone.password
# p phone.password = "qwerty"
# puts phone.inspect

#----------- shortcut accessor methods

# class Gadget
#   # aka getter and setter
#   attr_accessor :username
#   # aka getter
#   attr_reader :production_number
#   # aka setter
#   attr_writer :password
  


#   def initialize
#     @username = "User #{rand(1..100)}"
#     @password = "topsecret"
#     @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
#   end


#   def to_s 
#     "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
#   end

 
# end

# phone = Gadget.new
# p phone.username
# p phone.production_number
# # p phone.password
# p phone.password = "asdfgh"
# puts phone.inspect

#----------- add parameters to initialize method

class Gadget
  # aka getter and setter
  attr_accessor :username
  # aka getter
  attr_reader :production_number
  # aka setter
  attr_writer :password
  


  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end


  def to_s 
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
  end

 
end

g1 = Gadget.new("jeremy", "qwerty")

p g1.to_s



