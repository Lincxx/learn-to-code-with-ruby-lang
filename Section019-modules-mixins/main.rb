#----------- intro to modules
# A module is a toolbox or container of methods and constants
# Module methods and constants can be used as needed
# Modules create namespaces for methods with the same name
# Modules cannot be used to create instance
# Modules can be mixed into classed to add behavior

## one module per file

## Syntax and Style
# Modules names are written in UppererCamelCase
# Constants in modules should be written in all caps
# Access module methods with the dot operator(.)
# Access module constants with the :: symbol
# The :: symbol is called the scope resolution operator


module LengthConversions

  WEBSITE = "https://www.angelo.edu/departments/agriculture/faculty/scott_conversions.php"


  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles) 
    feet * 12
  end

  def self.miles_to_centimeter(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end

end

# puts LengthConversions::WEBSITE
# puts LengthConversions.miles_to_feet(100)
# puts LengthConversions.miles_to_inches(200)

#----------- modules with identical methods
module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

# module Circle
#   PI = 3.14159
#   def self.area(radius)
#     PI * radius * radius
#   end
# end

# puts Square.area(10)
# puts Rectangle.area(10, 2)
# puts Circle.area(10)


#----------- import modules into the current file
require "./circle.rb"

puts Circle.area(10)

#----------- math module
puts Math::PI
puts Math.sqrt(16)
puts Math.sqrt(69)
puts Math.sqrt(90)

#----------- mixins 1 - the comparable module
## Why mixin module to classes
# Different classes need similar functionalities
# For example, String and Numeric both need <, <=, >, >=, and ==
# However, neither class can be represented as a subclass of the other
# Duplication of methods across classes violates the DRY principle

# look at "olmpic_medal.rb"

#----------- mixins 2 - custom mixins
## What is a mixin?
# A mixin is a module that injects additional behavior into a class
# Mixins allows us to mimic inheritance form more than one class
# A class that includes a module has access to its methods and constants
# Constants and methods mixed into a class do not need to be prefixed with the module name

## Modules (Mixins) vs. Inheritance
# Class inheritance should be used for an 'is-a' relationship
# For example, an Array is a type of object
# Modules should be used for a 'has-a' relationship. It add functionality
# For example, a String 'has a' Comparable feature set

## The Method Lookup Path
# The order that modules are included in a class matter
# Ruby looks at the last module inclued in the class first
# If multiple modules mix in methods with the same name, the last module included in the    class definition will be used first
# Ruby will throw an error if the method is not found in the class, the modules or any superclasses

# look at "mixins_part_II.rb"


#----------- .ancestors method in depth
# look at "mixins_part_II.rb"

#----------- the prepend keyword
# look at "prepend_keyword.rb"

#----------- the extend keyword
# look at "extend_keyword.rb"

#----------- mixins 3 - the enumerable

