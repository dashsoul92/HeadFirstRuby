lines = []

# The open method actually calls File.new for us, and returns the result of that.
# Because we opened the file in the block, we don't have to explicitly run the close method.
review_file = File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end

# Using a block we search for relevant lines in the text file and then save them to the relevant_lines array.
relevant_lines = lines.find_all { |line| line.include?("Truncated")}

# The find_all method essentially does the following:
# def find_all
#   matching_items = []
#   self.each do |item|
#     if yield(item)
#       matching_items << item
#     end
#   end

reviews = relevant_lines.reject { |line| line.include?("--") }

# The reject method essentially does the following:
# def reject
#   kept_items = []
#   self.each do |item|
#     unless yield(item)
#       kept_items << item
#     end
#   end

def find_adjective(string)
  words = string.split(" ")
  # Here we're finding the word that proceeds an adjective.
  index = words.find_index("is")
  # Here we're returning the word, an adjective, that follows the word is.
  words[index + 1]
end

# Take all of the elements from the reviews object and extract the adjectives from the object.
# Save the extracted elements, which are now capitalized and enclosed within single quotation marks, to a new object called adjectives.
adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives

# You should close a file whenever you're done using it.
# If you don't close a file, then if you try to read from it multiple times, it will show an empty file.
# In addition, if you don't close it and then try to write to it, no other program can see the changes you made until you close the file.
# review_file.close
