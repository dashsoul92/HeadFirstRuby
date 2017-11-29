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

end

class Motorcycle < Vehicle

end

car = Car.new
car.odometer = 15000
car.gas_used = 500
print "Lifetime MPG: "
puts car.mileage, ""

truck = Truck.new
truck.accelerate
truck.sound_horn
puts

motorcycle = Motorcycle.new
motorcycle.sound_horn
motorcycle.steer
