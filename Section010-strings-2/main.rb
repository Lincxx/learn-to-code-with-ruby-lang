#----------- the .split method
sentence = "Hi, my name is Jeremy. There are spaces here!"
p sentence.split
p sentence.split(", ")
words =  sentence.split(".")
words =  sentence.split(" ")

words.each {|word| puts word.length}


#----------- coding exercise 3
def longest_word(sentence)
  # Write your code here
  words =  sentence.split(" ")
  lword = ""
  max = 0
  words.each do |word|
    if word.length > max
      max = word.length
      lword = word
    end
  end
  lword
end

p longest_word("mainly plain")#  => "kangaroos"

#----------- iterate over string characters
"Hello world".each_char { |char| puts char}
p "Hello world".split("") 
letters = "Hello world".chars
letters.each { |letter| puts "#{letter} is awesome!" }

#----------- the .join method 
names = ["joe", "moe", "bob"]

p names.join("!-!")

def custom_join(array, delimter = "")
    string = ""
    array.each do |arr|
        string << arr << delimter
    end
    string.slice(0, string.length - delimter.length)
end

def custom_join(array, delimter = "")
    string = ""
    arr_len = array.length - 1
    array.each_with_index do |arr, index|
        string << arr
        unless index == arr_len
            string << delimter
        end
    end
    string
end

p custom_join(["1","2","3"], "!-!")

#----------- the .count method occurences of a substring
puts "Hello World".count("H")
puts "Hello World".count("ll")

#----------- the .index and .rindex methods 


#----------- the .insert method
typo = "GeorgWashington"
typo.insert(5,"e")
puts typo


#----------- the .squeeze and .squeeze! method
sentence = "Thhe aardvark jumped ovver the fence"

puts sentence.squeeze

#----------- the .clear method
p "blh blah".clear

word = "Bye"
word.clear # this will clear the string
p word

#----------- the .delete method
puts "Helle world".delete("l")

puts "Helle world".delete("ldr")
