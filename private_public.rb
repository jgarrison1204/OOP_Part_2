
class Customer
  attr_reader :funds

  def initialize(funds, password)
    @funds = funds
    @password = password
  end

  def withdraw_securely(amount, password)
    if password == @password
      remove_funds(amount)
    end
  end

  private

  def remove_funds(amount)
    @funds -= amount
  end

end

p anal = Customer.new(500, "Lakers16!")
p anal.remove_funds(50)
puts anal.withdraw_securely(100, "Lakers16!")
puts anal.remove_funds(50)
