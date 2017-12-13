lines = []
File.open("votes.txt") do |file|
  lines = file.readlines
end

# Get each name from the array and tally the number of occurences.
votes = Hash.new(0)
lines.each do |name|
  name = name.chomp.upcase!
  # if votes.has_key?(name)
  #   votes[name] += 1
  # else
  #   votes[name] = 1
  # end
  votes[name] += 1
end

votes.each do |key, value|
  puts "#{key}: #{value}"
end
