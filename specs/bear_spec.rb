require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  # A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
  #
  # A bear should have an empty belly ( maybe an array... )
  #
  # A bear should be able to take a fish from the river

def test_does_bear_have_name
  bear = Bear.new("Dave", "panda")
  assert_equal("Dave", bear.name)
end

end
