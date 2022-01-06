# ... excludes the last item
# .. excludes the last item
#----------- intro to ranges
# nums = 1..5
# p nums.class
# p nums.first
# p nums.last
# p nums.first(4)
# p nums.last(2)
# puts (1..10).first(3)

#----------- alphabetical ranges
# alphabet = "A".."z" # stored in a array
# # p alphabet.first(5)
# puts alphabet.first(40) # there will be extra chars included
# puts alphabet.last(5)

#----------- the .size method on a range
# nums = 143..769
# p nums.size

#----------- check if value exists in a range with .include? method or ===
# half_alphabet = "a".."m"

# puts half_alphabet === "k"

# puts half_alphabet.include?("b")

#----------- generate random num with the rand method
# puts rand
# puts rand(101)
# puts rand.round(1)
# puts rand * 100 

puts rand(1..5)
