require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

def setup
  @fishes = [
    fish1 = Fish.new("Jaws"),
    fish2 = Fish.new("Chloe"),
    fish2 = Fish.new("Nemo")
  ]
  @river = River.new("Nile", @fishes)
end

  # A river should have a name e.g. "Amazon"
def test_does_river_have_name
  assert_equal("Nile", @river.name)
end

# A river should hold many fish
  def test_how_many_fish_in_river
    assert_equal(3, @river.amount_of_fish)
  end

  # A river could trigger spawning (fish having babies)
  def test_to_see_if_river_can_spawn_fish
    @river.spawn_fish("Bob")
    assert_equal(4, @river.amount_of_fish)
  end
end
