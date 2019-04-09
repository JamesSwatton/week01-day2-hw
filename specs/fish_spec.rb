require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

# A fish should have a name

def test_does_fish_have_name
  fish = Fish.new("Nemo")
  assert_equal("Nemo", fish.name)
end

end
