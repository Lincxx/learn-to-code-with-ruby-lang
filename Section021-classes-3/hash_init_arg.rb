class Canidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, details)
    @name = name
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace  = details[:birthplace]
  end
end


senetor = Canidate.new("Mr. Smith", age: 53, occupation: "Banker", hobby:"Fishing", birthplace:"Michigan")



p senetor.age
p senetor.name
p senetor.occupation
p senetor.hobby
p senetor.birthplace