# attr_writer :name is a shortcut to create an attribute writer.
# attr_reader :name is a shortcut to create an attribute reader.
# attr_accessor :name is a shortcut to create both an attribute writer and reader.

class Bird

  attr_accessor :name, :age

  def talk
    puts "#{@name} says Chirp! Chirp!"
  end

  def move(destination)
    puts "#{@name} flies to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Dog
  # An accessor method, known as an attribute writer, which writes values to the instance variable.
  def name=(new_value)
    # We use the @ sign to tell ruby that the variable is an instance variable.
    if new_value == ""
      puts "Name can't be blank."
    else
      @name = new_value
    end
  end
  # An accessor method, known as an attribute reader, which reads values from the instance variable.
  def name
    @name
  end

  def age=(new_value)
    if new_value.is_a? String
      puts "Age cannot be a string!"
    elsif new_value < 0
      puts "An age of #{new_value} isn't valid!"
    else
      if new_value.is_a? Integer
        @age = new_value
      else
        puts "An age of #{new_value} isn't valid! The age must be a whole number."
      end
    end
  end

  def age
    @age
  end

  def talk
    # We also use the @ sign with the variable name when referencing an instance variable.
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Cat

  attr_writer :name

  attr_reader :name

  attr_writer :age

  attr_reader :age

  def talk
    puts "#{@name} says Meow!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

# Creating new instances of the classes (new objects based on the classes).
dog = Dog.new
bird = Bird.new
cat = Cat.new

dog.name = "Simba"
puts "", "Name set to: #{dog.name}"
dog.age = 12
puts "Age set to: #{dog.age}"
dog.move("yard")
dog.report_age
puts

bird.name = "Tweety"
bird.age = 2
bird.move("tree")
bird.talk
bird.report_age
puts

cat.name = "Socks"
cat.age = 7
cat.move("house")
cat.talk
cat.report_age
