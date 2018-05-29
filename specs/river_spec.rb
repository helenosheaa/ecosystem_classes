require('minitest/autorun')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
  end

  def test_river_name()
    assert_equal("Amazon", @river.name())
  end

  def test_fish_number()
    assert_equal(0, @river.fish_number())
  end

end
