class Dog
  def talk
    puts "Bark!"
  end
  def move(destination)
    puts "Running to the #{destination}."
  end
end

# When we call the new method on a class, it returns a new instance of that class.
fixdo = Dog.new
rex = Dog.new

fixdo.talk
rex.move("tree")
