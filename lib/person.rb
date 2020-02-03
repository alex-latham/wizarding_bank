class Person

  def initialize(name_parameter, cash_parameter)
    @name = name_parameter
    @cash = cash_parameter
    @banks = {}

    p "#{name} has been created with #{cash} galleons in cash."
  end

  # stores person's cash level, which banks they have an account with, and
  # their balances at each bank
end
