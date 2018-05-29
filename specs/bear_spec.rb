require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')


class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Billy", "Grizzly")
  end

  def test_bear_name()
    assert_equal("Billy", @bear.name())
  end

  def test_bear_type()
    assert_equal("Grizzly", @bear.type())
  end

end
