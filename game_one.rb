# Get My Number Game
# Written by: dashsoul92

puts "Welcome to 'Get My Number!'"

# Get the player's name and greets them.
print "Please enter your name: "
name = gets.chomp.upcase
puts "Hello #{name}, welcome to the game!", ""

# Both the p method and inspect method can be used to debug code. They essentially do the same thing.
# p name
# puts name.inspect

# Store a random number for the player to guess.
random_number = rand(100) + 1
puts "I've got a random number between 1 and 100."
puts "Can you guess it?", ""

# Track how many guesses the player has made.
number_of_guesses = 0

# Track whether the player has guessed correctly
guessed_it = false

until number_of_guesses == 10 || guessed_it

  # #{number_of_guesses} is an example of string interpolation. It's used to substitute the value of the variable into the string
  puts "You've got #{10 - number_of_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i

  number_of_guesses += 1

  # Compare the guess to the target and prints the appropriate message.
  if guess < random_number
    puts "Oops. Your guess was to LOW.", ""
  elsif guess > random_number
    puts "Oops. Your target was to HIGH.", ""
  elsif guess == random_number
    puts "Good job, #{name}!"
    puts "You guessed my number in #{number_of_guesses} guesses!", ""
    guessed_it = true
  end

end

# If the player ran out of turns, tell them what the number was.
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{random_number}.)"
end
