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

reviews.each { |line| puts line }

# You should close a file whenever you're done using it.
# If you don't close a file, then if you try to read from it multiple times, it will show an empty file.
# In addition, if you don't close it and then try to write to it, no other program can see the changes you made until you close the file.
# review_file.close
