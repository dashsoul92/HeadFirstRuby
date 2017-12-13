class Canidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  # We gave the parameter, options, a default hash in case one isn't passed as an argument.
  # We made the age and occupation parameters required by leaving the default value blank.
  def initialize(name, age:, occupation:, hobby: nil, birthplace: "Sleepy Creek")
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

bob = Canidate.new("Bob",
  {:age => 37, :occupation => "Engineer", :hobby => "Lacrosse", :birthplace => "Seattle"})

# You can also leave the curly braces off, as long as the hash argument is the final argument.
mike = Canidate.new("Mike",
  :age => 24, :occupation => "Unemployed", :birthplace => "San Francisco")

# If a hash uses symbols as keys, then you can leave off the colon and replace the hash rocket (=>) with a colon.
rick = Canidate.new("Rick",
  age: 27, occupation: "Lawyer", birthplace: "Atlanta")

p bob
p mike
p rick
