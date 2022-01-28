class Product
  @@product_counter = 0 

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    @@widget_counter += 1
  end
end


class Thingy < Product
  @@thingy_counter = 0

  def self.counter
    @@thingy_counter
  end

  def initialize
    @@thingy_counter += 1
  end
end

a = Widget.new
b = Widget.new

puts Widget.counter
puts Product.counter

c = Thingy.new
d = Thingy.new
e = Thingy.new

puts Thingy.counter
puts Product.counter

