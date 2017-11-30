class Vehicle

  attr_accessor :odometer, :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    return @odometer / @gas_used
  end

end

# A "less-than" symbol means "inherits from" or "specializes".
# Ruby uses a "less-than" sybol because the subclass is a subset of the superclass.
class Car < Vehicle

end

class Truck < Vehicle

  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    if contents == ""
      raise "Contents cannot be an empty string!"
    elsif contents.is_a? Integer
      raise "#{contents} is not a valid string!"
    else
      @cargo = contents
    end
  end

end

class Motorcycle < Vehicle

  # This method will overide the superclass's steer method.
  # Ruby, by default, will check to see if the called method is defined in a sublclass, and if it is, it will call the method.
  # If the method isn't found in the subclass, Ruby will look for it in the superclass.
  def steer
    puts "Turn front wheel."
  end

end

car = Car.new
car.odometer = 15000
car.gas_used = 500
print "Lifetime MPG: "
puts car.mileage, ""

truck = Truck.new
truck.load_bed("mattresses")
puts "The contents are: #{truck.cargo}"
truck.accelerate
truck.sound_horn
truck.steer
puts

motorcycle = Motorcycle.new
motorcycle.sound_horn
motorcycle.accelerate
motorcycle.steer
