require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test
  # A river should have a name e.g. "Amazon"
  #
  # A river should hold many fish

def setup
  @fishes = [
    fish1 = Fish.new("Jaws"),
    fish2 = Fish.new("Chloe"),
    fish2 = Fish.new("Nemo")
  ]
  @river = River.new("Nile", @fishes)
end

def test_does_river_have_name
  assert_equal("Nile", @river.name)
end

end
