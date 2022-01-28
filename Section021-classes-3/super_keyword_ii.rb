class Car 
   def initialize(maker)
    @maker = maker
   end
  def drive 
    "Vroom Vroom!"
  end
end

class Firetruck < Car

  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    super() + " Beep! Beep! I'm driving at #{speed} miles per hour"
  end
end

ft = Firetruck.new("Ford", 2)
p ft.drive(45)