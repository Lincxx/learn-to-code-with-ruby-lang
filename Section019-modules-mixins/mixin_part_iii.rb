class ConvevienceStore
  include Enumerable

  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end
end

bodega = ConvevienceStore.new
bodega.add_snack("Doritos")
bodega.add_snack("Slim Jim")
bodega.add_snack("Jolly Ranchers")

bodega.each {|snack| puts "#{snack}"}

p bodega.any? {|snack| snack.length > 10}
newarr =  bodega.map {|snack| snack.upcase}
p newarr
p bodega.select {|snack| snack.downcase}