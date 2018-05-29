require('minitest/autorun')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Filly")
  end

  def test_fish_name()
    assert_equal("Filly", @fish1.name())
  end

end
