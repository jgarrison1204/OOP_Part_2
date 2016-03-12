class Customer
  attr_reader :id

  @@id = 1
  @@customers = []

  def initialize
    @id = @@id
    @@id += 1
    @@customers << self
  end

  def self.all
    @@customers
  end
end

p jacob = Customer.new
p tina = Customer.new
p Customer.all
