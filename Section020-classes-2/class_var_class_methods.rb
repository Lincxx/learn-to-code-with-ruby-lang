## What is a class variable 
# some pieces of daa extended beyond the scope of a single object
# some class variable solves the issue of data duplication across instances
# a class varaible belongs to the whole class rather than to one object
# class variables store information that does not pertain to an instance

## What is a class method?
# a class method is a method available on the class rahter than an instance
# class methods contain functionality that does not involve one instance
# a class method can be called even if objects / instances do not exist
# the new method that we call upon a class to create an object is an example of a class method

## Syntax 
# class variable egin with the @@ sigil
# instance variavbles begin with a single @ sigil
# class methods are prefixed with the self keyword
# be careful! in an instance metohd deifintion, self refers to the object

class Bicycle
  # class var, only avaible here not on the object
  @@maker = "BikeTech"
  @@count = 0

  # class methods
  def self.description
    "Hi there, I'm the blueprint for bicycles."
  end


  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end
end

puts Bicycle.description
puts Bicycle.count

bike = Bicycle.new
puts bike.maker

puts Bicycle.count