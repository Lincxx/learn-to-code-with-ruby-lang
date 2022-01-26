require_relative 'app_store'

class Gadget 

  # attr_writer :password
  # lec 237
  attr_reader :production_number, :apps
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
    # @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
    @production_number = generate_production_number
    # lec 237
    @apps = []
  end

  # @production_number this would reference the instance variable
  # self.production_number or production_number this would reference the instacne method
  def to_s 
    "Gadget #{production_number} has the username #{username}.
    It is made from the #{self.class} class and it has the ID #{self.object_id}."
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name }
    apps.delete(app) unless app.nil?
  end

  # lec 237
  def reset(username, password)
    self.username = username
    # this is like calling password=
    self.password = password
    self.apps = []
  end

  def password=(new_password)
    if validate_password(new_password)
      @password = new_password
    end
  end

  private
  # lec 237
  attr_writer :apps

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2022"
    5.times {middle_digits << alphabet.sample}
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  # add validation lec 235
  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
end

g = Gadget.new("Jeremy", "password")

p g.apps

g.install_app(:Chat)
g.install_app(:Twitter)
g.install_app(:Chat)
p g.apps

g.delete_app(:Twitter)

p g.apps



