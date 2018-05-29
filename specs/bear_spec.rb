require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')


class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Billy", "Grizzly")
    @fish1 = Fish.new("Filly")
    @river = River.new("Amazon")
  end

  def test_bear_name()
    assert_equal("Billy", @bear.name())
  end

  def test_bear_type()
    assert_equal("Grizzly", @bear.type())
  end

  def test_empty_stomach()
    assert_equal(0, @bear.stomach_fill())
  end

  def test_eat_fish()
    @bear.eat_fish(@fish1)
    assert_equal(1, @bear.stomach_fill())
  end

#   def test_take_fish_from_river()
#     @fish_number = FishNumber.new(0)
#     @fish_number.eat_fish(@fish1)
#     @bear.take_fish_from_river(@fish_number)
#     assert_equal(1, @bear.stomach_fill())
#     assert_equal(0, @river.fish_number())
#   end
#
def test_take_fish_from_river
  @river.take_fish(@fish1)
  @bear.eat_fish(@fish1)
  @river.remove_fish(@fish1)
  assert_equal(0, @river.fish_number.length)
  assert_equal(1, @bear.stomach.length)
end

end
