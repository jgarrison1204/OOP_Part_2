class Customer
  attr_reader :funds

  public

  def initialize(funds, password)
    @password = password
    @funds = funds
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

diego = Customer.new(500, "udacious")

puts diego.funds

puts diego.withdraw_securely(100, "udacious")

puts diego.remove_funds(100)
