class Employee

 attr_accessor :name, :pay, :location

  @@all = []

  def initialize(name, pay, location)
    @name = name
    @pay = pay
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_pay
    pay_array = self.all.map do |employee|
      employee.pay
    end
    pay_total = pay_array.inject(0){|sum, x| sum + x}
    pay_total.to_f/self.all.length.to_f
  end

end
