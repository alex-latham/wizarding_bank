require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'
require './lib/bank'

class BankTest < Minitest::Test
  def test_it_exists
    bank = Bank.new("Wells Fargo")

    assert_instance_of Bank, bank
  end
end
