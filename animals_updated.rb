class Animal
  attr_reader :name, :age

  # An attribute_writer method for the static varaible name.
  def name=(value)
    if value == ""
      raise "Name cannot be blank!"
    elsif value.is_a? Integer
      raise "Name cannot contain numbers!"
    else
      if value.is_a? String
        @name = value
      end
    end
  end

  # An attribute_writer method for the static varaible name.
  def age=(value)
    if value == ""
      raise "Age cannot be blank!"
    elsif value.is_a? String
      raise "Age cannot be a string!"
    elsif value < 0
      raise "An age of #{value} is not valid!"
    else
      if value.is_a? Integer
        @age = value
      end
    end
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def talk()
    puts "#{@name} says Bark!"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Dog < Animal
  # A method that overrides the superclass object's to_s method.
  def to_s
    puts "#{@name} the dog, age #{@age}"
  end
end

class Bird < Animal
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end

  def move(destination)
    puts "#{@name} flies to the #{@destination}."
  end

  def to_s
    puts "#{@name} the bird, age #{@age}"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end

  def move(destination)
    puts "#{@name} walks to the #{@destination}."
  end

  def to_s
    puts "#{@name} the cat, age #{@age}"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    # We used super instead of super() so that the argument passed into the subclass's move method will also be passed into the superclass's move method.
    super
  end

  def talk
    puts "#{@name} says squeal!"
  end

  def to_s
    puts "#{@name} the armadillo, age #{@age}"
  end
end

spot = Dog.new
spot.name = "Spot"
spot.age = 7
spot.move("stream")
spot.talk
puts spot.to_s

whiskers = Cat.new
whiskers.name = "Whiskers"
whiskers.age = 3
whiskers.move("fence")
whiskers.talk
puts whiskers.to_s

polly = Bird.new
polly.name = "Polly"
polly.age = 1
polly.move("Tree")
polly.talk
puts polly.to_s

army = Armadillo.new
army.name = "Army"
army.age = 12
army.move("Bush")
army.talk
puts army.to_s
