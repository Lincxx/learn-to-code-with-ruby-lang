class Car  
  def drive 
    "Vroom Vroom!"
  end
end

class Firetruck < Car
  def drive(speed)
    super() + " Beep! Beep! I'm driving at #{speed} miles per hour"
  end
end

ft = Firetruck.new
p ft.drive(45)