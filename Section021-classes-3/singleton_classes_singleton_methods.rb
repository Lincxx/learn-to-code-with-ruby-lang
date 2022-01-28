class Player
  def play_game
    rand(1..100) > 50 ? "Winner" : "Loser!"
  end
end


bob = Player.new
boris = Player.new


# singleton method
def boris.play_game
  "Winner"
end

p bob.play_game
p boris.class
p boris.class.ancestors
p boris.singleton_methods
p boris.singleton_class


