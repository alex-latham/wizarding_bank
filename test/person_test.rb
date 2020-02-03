require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < Minitest::Test
  def test_it_exists
    person = Person.new("Minerva", 1000)

    assert_instance_of Person, person
  end
end
