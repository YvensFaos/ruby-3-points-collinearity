require_relative 'collinearity.rb'
require 'test/unit'

class CollinearityTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.
  def teardown
    # Do nothing
  end

  # Fake test
  def test_coverage
    # All points are equals
    assert_equal(true, checkCollinearity(0, 0, 0, 0, 0, 0))
    # Two points are equals
    assert_equal(true, checkCollinearity(0, 0, 0, 0, 1, 1))
    # Three different points and not collinear
    assert_equal(false, checkCollinearity(0, 1, 8, 4, 14, 5))
    # Three points forming a vertical line
    assert_equal(true, checkCollinearity(0, 0, 0, 1, 0, 2))
    # Three points forming a horizontal line
    assert_equal(true, checkCollinearity(0, 0, 1, 0, 2, 0))
    # Far away points
    assert_equal(false, checkCollinearity(0, 0, 1, 0, 1000000, 1))
    # Three points forming a diagonal line
    assert_equal(true, checkCollinearity(0, 0, 3, 3, 5, 5))
  end
end