
class Location


  attr_reader :restaurant, :address, :rent

  @@all = []

  def initialize(restaurant, address, rent)
    @restaurant = restaurant
    @address = address
    @rent = rent
    @@all << self
  end


  def self.all_addresses
  self.all.map {|location| location.address}
  end

  def self.all
    @@all
  end

  def hire_employee(name, pay)
    Employee.new(name, pay, self)
  end

end
