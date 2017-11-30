class Dog
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

dog = Dog.new
dog.name = "Daisy"
dog.age = ""
dog.report_age
dog.talk
dog.move("bed")
