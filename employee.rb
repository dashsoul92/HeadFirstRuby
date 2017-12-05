class Employee

  # Shortcut to create reader accessor methods for the static variable.
  attr_reader :name

  # A writer accessor method used to assign a value to the static variable.
  def name=(name)
    if name == ""
      raise "Name cannot be blank!"
    else
      @name = name
    end
  end

  def print_name
    puts "Name: #{name}"
  end

  def initialize(name = "Anonymous")
    self.name = name
  end

end

class SalariedEmployee < Employee

  attr_reader :salary

  # The first way to define a class method is to write the class name, followed by a dot opperator, and then the name of the method.
  def SalariedEmployee.say_hello
    puts "Hello, Bob!"
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    else
      @salary = salary
    end
  end

  def print_pay_stub
    # Here we explicityly specify a receiver using the dot operator, however, if you don't specify a receiver, it'll default to the current object, self.
    print_name
    # Finds the daily pay and them multiplies that by the number of days worked in the pay period.
    # In order to have an accurate calculation, we must divide by 365.00 in order to get a float as a result.
    pay_for_period = (salary / 365.00) * 14
    # When using the format method, %s is used for a string, %i is used for integers, and %f is used for floating-point decimals.
    puts format("Pay this period: $%0.2f", pay_for_period), ""
  end

  # The initialize method is called directly after Ruby allocates memory to hold the new class object.
  # Here we're overriding the superclass, Object's initialize method, and assigning values to the class object's instance variables.
  # This Ruby method is the equivalent of other OOP languages constructor method.
  def initialize(name = "Anonymous", salary = 0.0)
    # The self method refers to the current object.
    # Here we're calling the current object's name and salary methods to validate user input and assign the values to the object's static variables.
    # We only need to use the self method when dealing with writer accessor methods.
    super(name)
    self.salary = salary
  end

end

class HourlyEmployee < Employee

  attr_reader :hourly_wage, :hours_per_week

  # The second way to define a class method is to use the keyword self, followed by a dot opperator, and then the method's name.
  def self.say_hello
    puts "Hello, Bob!"
  end

  # The creation of a factory method which generates the starting wage and hours worked for the object.
  def self.security_guard(name = "Anonymous")
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name = "Anonymous")
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name = "Anonymous")
    HourlyEmployee.new(name, 10.50, 20)
  end

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "An hourly_wage of #{hourly_wage} is invalid!"
    else
      @hourly_wage = hourly_wage
    end
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "#{hours_per_week} is invalid!"
    else
      @hours_per_week = hours_per_week
    end
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    puts format("Pay this period: $%0.2f", pay_for_period), ""
  end

  def initialize(name = "Anonymous", hourly_wage = 0.00, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

end

# Any time the new method is called, the initialize method is also called.
bob = SalariedEmployee.new("Bob", 50000)
bob.print_pay_stub

burt = HourlyEmployee.new("Burt", 11.00, 40.00)
burt.print_pay_stub

anonymous = HourlyEmployee.security_guard()
anonymous.print_pay_stub
edwin = HourlyEmployee.janitor("Edwin Burgess")
edwin.print_pay_stub
ivan = HourlyEmployee.cashier("Ivan Stokes")
ivan.print_pay_stub
