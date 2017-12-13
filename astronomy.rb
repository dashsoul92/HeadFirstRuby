class CelestialBody
  attr_accessor :type, :name
end

# When the block is called later, it'll receive a reference to the hash and the key being accessed.
bodies = Hash.new do |hash, key|
  # Here we set up the object, which will become the value for this key.
  body = CelestialBody.new
  body.type = "planet"
  # Here we assign the object to the current hash key.
  # Because the assignment expression is at the very end of the block, it's value, which is the same value being assigned, is returned.
  hash[key] = body
end

bodies['Mars'].name = "Mars"
bodies['Europa'].name = "Europa"
bodies['Europa'].type = "moon"
bodies['Venus'].name = "Venus"

p bodies['Mars']
p bodies['Europa']
p bodies['Venus']
