#----------- intro to hashes
# A hash or hash mao is a daa structure that stores key-value pairs
# hasehes are called dictionaries, maps, ascociative arrays in other languages
# A hash object connects uniquew identifiers (keys) to values
# Hash keys and hashes values can be objects of any type
# Hash keys must be unique (no duplicate)
# Hash values can contain dups
# Hashes should be treated as unordered. Values are extracted by their key, not by their order

# empty_hash = {}
# p empty_hash
# p empty_hash.class

#----------- create hash and extract values from hashes by their key
# nfl_roster = {"Tom Brady" => "New England Patroits", 
#               "Tony Romo" => "Dallas Cowboys",
#               "Rob Gronkowski" => "New England Patroits"
#             }

# nba_roster = {
#               "Cleveland Cavaliers" => ["LeBron James", "Kevin Love", "Kyrie Irving"],
#               "Golden State Warriors" => ["Stephen Curry", "Klay Thompson", "Kevin Durant"]
#              }
# p nfl_roster["Tom Brady"]
# p nfl_roster["VDOn"]

# p nba_roster["Cleveland Cavaliers"][0]

#----------- intro to symbols and symbols as hash keys
# p :name
# p :name.methods.length
# p "name".methods
# p :name.class

# person = {:name => "Jeremy", 
#           :age => 45,
#           :languages => ["Ruby", "JS", "PHP", "SCALA"]
#         }


# person = {name: "jeremy", age: 45, languages: ["Ruby", "JS", "PHP", "SCALA"]}

# p person[:name]

#----------- convert symbols to strings and vice versa
# p :age.to_s.class
# p "age".to_sym # converts a string to a symbol

# p "school bus".to_sym

#----------- the .fetch method on a hash
# menu = {
#         burger: 3.99, taco: 5.96, chips:0.5
#       }

# p menu[:burger]
# p menu[:salad]

# p menu.fetch(:chips)
# p menu.fetch(:taco)
# p menu.fetch(:lamb, "Not Found")

#----------- add a key value pair to a hash with bracket syntax or the .store method
# menu = {burger: 3.99, taco: 5.96, chips:0.5}

# p menu[:burger]
# p menu[:sandwich] = 8.99
# menu.store(:sushi, 2.99)
# menu.store(:steak, 6.99)

# p menu

#----------- the .length and .empty? methods on a hash
# shopping_list = {
#                   bananas: 5, 
#                   ornages: 10, 
#                   carrots: 3, 
#                   crackers: 15
#                 }

# vegan_shopping_list = {}

# p shopping_list.length
# p shopping_list.empty?
# p vegan_shopping_list.length
# p vegan_shopping_list.empty?

#----------- the .each method on a hash
# capitals = {alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix", arkansas: "Little Rock"}

# capitals.each do |state, capital|
#   puts "Querying hash..."
#   puts "The capital of #{state.capitalize} is #{capital}"
# end

# capitals.each do |guess|
#   p guess
# end

#----------- Coding exercise count of value on a hash
# def value_count(hash, value)
#     count= 0
#     hash.each do |k,v|
#       if v == value
#         count += 1
#       end
#     end
#     count
# end

# hash= {a:5, b:2, c:3, d:5}

# p value_count(hash, 5)

#----------- the .each_key and .each_value
salaries = {director: 100000, producer: 200000, ceo: 3000000}

salaries.each_key do |position|
  puts "Employee record:---------"
  puts "#{position}"
end

salaries.each_value {|salary| puts salary}

#----------- retrieve keys or values from hash as an array

shopping_list = {
                  bananas: 5, 
                  ornages: 10, 
                  carrots: 5, 
                  crackers: 15
                }

p shopping_list.keys
p shopping_list.values
p shopping_list.values.uniq