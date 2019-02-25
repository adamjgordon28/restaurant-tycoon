
class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def locations
    Location.all.select {|location|location.restaurant == self}
  end

  def create_location(address, rent)
    Location.new(self, address, rent)
  end

  def total_rent
    self.locations.map do |location|
      location.rent
    end.inject{|sum, x| sum + x}
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select do |employee|
      employee.location.restaurant == self
    end
  end

  def total_pay
    pay_array = self.employees.map do |employee|
      employee.pay
    end
    pay_array.inject(0){|sum, x| sum + x}
  end

  def total_expenses
    total_expenses = self.total_pay + self.total_rent
    total_expenses
  end



end
