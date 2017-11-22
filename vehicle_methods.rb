# All three of these methdos can be executed without using the . opperator.
# This is because they're included in the top-level execution environment.
# Any method that is defined outside of a class is included in the top-level execution environment.
def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer!"
end

# You can implicitly return values in Ruby.
# Rather than explicitly typing, return, Ruby will, by default, return the value of the last expression evaluated.
def mileage(miles_driven, gas_used)
  if gas_used == 0
    return 0.0
  end
  miles_driven / gas_used
end

sound_horn
accelerate
use_headlights
use_headlights("high-beam")

puts mileage(400, 12)
puts mileage(0, 0)
