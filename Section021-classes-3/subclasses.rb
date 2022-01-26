class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old"
  end
end


class Manager < Employee
  attr_accessor :rank
  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell 
    "Who's the boss? I'm the boss!"
  end

  def introduce
    result = super
    result += " I'm also a manager!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell 
    "I'm working!"
  end
end

bob = Manager.new("Bob", 48, "manager")
dan = Worker.new("Daniel", 36)

puts bob.rank

puts bob.yell
puts bob.introduce
puts dan.clock_in("8:10AM")
puts dan.yell

puts bob.is_a?(Manager)
puts bob.instance_of?(Manager)

puts Manager.superclass
puts Worker.superclass


puts Manager.superclass == Worker.superclass
# Does manager inheriate from employee
puts Manager < Employee
puts Worker < Employee
puts Employee < Worker 
p Worker.ancestors

p bob.introduce
p dan.introduce