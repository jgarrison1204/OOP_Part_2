class Customer
  attr_reader :id
  attr_reader :customers

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

p larry = Customer.new
# => #<Customer:0x007faaba8a6aa8 @id=1>
p christine = Customer.new
# => #<Customer:0x007faaba8a6aa8 @id=2>
puts larry.id
# => 1
puts christine.id
# => 2
p Customer.all
