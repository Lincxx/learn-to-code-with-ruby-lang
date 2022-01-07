#----------- the .split method
# sentence = "Hi, my name is Jeremy. There are spaces here!"
# p sentence.split
# p sentence.split(", ")
# words =  sentence.split(".")
# words =  sentence.split(" ")

# words.each {|word| puts word.length}


#----------- coding exercise 3
# def longest_word(sentence)
#   # Write your code here
#   words =  sentence.split(" ")
#   lword = ""
#   max = 0
#   words.each do |word|
#     if word.length > max
#       max = word.length
#       lword = word
#     end
#   end
#   lword
# end

# p longest_word("mainly plain")#  => "kangaroos"

#----------- iterate over string characters
# "Hello world".each_char { |char| puts char}
# p "Hello world".split("") 
# letters = "Hello world".chars
# letters.each { |letter| puts "#{letter} is awesome!" }

#----------- the .join method 
names = ["joe", "moe", "bob"]

p names.join("!-!")

def custom_join(array, delimter = "")
  
end

#----------- the .count method 
#----------- the .index and .rindex methods 
#----------- the .insert method
#----------- the .squeeze method
#----------- the .clear method
#----------- the .delete method
