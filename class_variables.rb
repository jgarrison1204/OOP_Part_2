class Employee
  @@bank = "Udacity International Bank"

  def bank
    @@bank
  end
end

elana = Employee.new
# => #<Employee:0x007fcdb48c19d0>
corey = Employee.new
# => #<Employee:0x00nfbdm132ejd9>
puts elana.bank
# => "Udacity International Bank"
puts corey.bank
# => "Udacity International Bank"
