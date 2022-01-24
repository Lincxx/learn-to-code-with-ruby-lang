module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end


class Bookstore
  include Purchaseable

  # Override method
  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

class LocalBookstore < Bookstore

end

# bn = Bookstore.new
# p bn.purchase("Atlas Shrugged")

# jeremy = LocalBookstore.new
# p jeremy.purchase("Dreaden Files")

# .ancestors section
p Bookstore.ancestors

bn = Bookstore.new
p bn.purchase("1984")

