require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  # A bear should be able to take a fish from the river

# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
def test_does_bear_have_name
  bear = Bear.new("Dave", "panda")
  assert_equal("Dave", bear.name)
end

def test_does_bear_have_type
  bear = Bear.new("Dave", "panda")
  assert_equal("panda", bear.type)
end

# A bear should have an empty belly ( maybe an array... )
  def test_is_belly_empty
    bear = Bear.new("Dave", "panda")
    assert_equal(0, bear.amount_of_fish_in_belly)
  end

end
