class Canidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, details = {})
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

congress1 = Canidate.new("Mrs. Jones")
congress2 = Canidate.new("Mrs. Jones", hobby: "Movies", occupation: "Professor")

p congress1.age
p congress1.name
p congress1.occupation
p congress1.hobby
p congress1.birthplace

p congress2.age
p congress2.name
p congress2.occupation
p congress2.hobby
p congress2.birthplace