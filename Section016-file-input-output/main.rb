#----------- read from a text file 
File.open("novel.txt").each do |line|
  p line
end

#----------- write to a text file
# w will overwrite if the file exists
File.open("myFirstFile.txt", "w") do  |file|
  file.puts "I'm creating this from Ruby!"
  file.write "No line break here!"
  file.puts "Pretty cool!"
end

# a will append to a file
File.open("myFirstFile.txt", "a") do  |file|
  file.puts "This will be appended to the end"
  file.print "and this will be there as well. "
end

#----------- rename and delete a file
File.rename("myFirstFile.txt", "somethingBetter.txt")

#File.delete("somethingBetter.txt")

# if File.exist?("somethingBetter.txt")
#   File.delete("somethingBetter.txt")
# end 

#----------- command line args (argv)
ARGV.each do |args|
  number = args.to_i 
  puts "The square of #{number} is #{number ** 2}"
end

#----------- the load method
puts "This is the beginning"

load "end.rb"

# we can go a dir if needed ../

if 8 > 5
  load "end.rb"
end

#----------- the require and require_relative
# require, should be a feature
# require looks in the installtion dir

# require "./end.rb"
# require will only get it once

# defaults to the current dir
require_relative "end.rb"


