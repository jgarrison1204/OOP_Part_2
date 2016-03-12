class InvaildPasswordError < StandardError
end

class Customer
  attr_reader :funds

  def initialize(funds, password)
    @funds = funds
    @password = password
  end

  def withdraw_securely(amount, password)
    if @password == password
      remove_funds(amount)
    else
      raise InvaildPasswordError,"#{password} is not the correct password."
    end
  end

  private

  def remove_funds(amount)
      @funds -= amount
  end
end

jacob = Customer.new(500, "goodpassword")
p jacob.withdraw_securely(100, "badpassword")
