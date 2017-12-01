class Employee

  # Shortcut to create reader accessor methods for both static variables.
  attr_reader :name, :salary

  # A writer accessor method used to assign a value to the static variable.
  def name=(name)
    if name == ""
      raise "Name cannot be blank!"
    else
      @name = name
    end
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    else
      @salary = salary
    end
  end

  # The initialize method is called directly after Ruby allocates memory to hold the new class object.
  # Here we're overriding the superclass, Object's initialize method, and assigning values to the class object's instance variables.
  # This Ruby method is the equivalent of other OOP languages constructor method.
  def initialize(name = "Anonymous", salary = 0.0)
    # The self method refers to the current object.
    # Here we're calling the current object's name and salary methods to validate user input and assign the values to the object's static variables.
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    # Finds the daily pay and them multiplies that by the number of days worked in the pay period.
    # In order to have an accurate calculation, we must divide by 365.00 in order to get a float as a result.
    pay_for_period = (@salary / 365.00) * 14
    # When using the format method, %s is used for a string, %i is used for integers, and %f is used for floating-point decimals.
    puts format("Pay this period: $%0.2f", pay_for_period), ""
  end

end

# Any time the new method is called, the initialize method is also called.
amy = Employee.new
amy.print_pay_stub
amy.name = "Amy"
amy.salary = 50000
amy.print_pay_stub

bob = Employee.new("Bob", 10000).print_pay_stub

rick = Employee.new("Rick").print_pay_stub
