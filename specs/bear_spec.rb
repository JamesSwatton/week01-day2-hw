require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test


def setup
  @bear = Bear.new("Dave", "panda")
end

# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
def test_does_bear_have_name
  assert_equal("Dave", @bear.name)
end

def test_does_bear_have_type
  assert_equal("panda", @bear.type)
end

# A bear should have an empty belly ( maybe an array... )
  def test_is_belly_empty
    assert_equal(0, @bear.amount_of_fish_in_belly)
  end

# A bear should be able to take a fish from the river
  def test_if_bear_can_take_fish_from_river
    river = River.new("Big", [1,2,3])
    @bear.take_fish_from_river(1, river)
    assert_equal(1, @bear.amount_of_fish_in_belly)
    assert_equal(2, river.amount_of_fish)
  end

#   A bear could be able to roar
  def test_to_see_if_bear_can_roar
    assert_equal("Rooaarr!", @bear.roar)
  end
# A bear could report how many fish are in its belly
  def test_how_may_fish_in_belly
    river = River.new("Big", [1,2,3])
    @bear.take_fish_from_river(2, river)
    assert_equal(2, @bear.amount_of_fish_in_belly)
  end

end
