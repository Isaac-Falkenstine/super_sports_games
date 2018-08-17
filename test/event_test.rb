require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test
  def test_its_max
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 41, curling.max_age
  end

  def test_its_min
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 18, curling.min_age
  end

  def test_its_avg
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 26.6, curling.average_age
  end

  def test_standard_dev
    curling = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 8.28, curling.standard_deviation_age
  end
end
