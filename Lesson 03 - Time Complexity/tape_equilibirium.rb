# Problem: https://app.codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/

def solution(arr)
  min = Float::INFINITY
  count = arr.size - 1

  left_sum = 0
  right_sum = arr.reduce(:+)

  count.times do |i|
    left_sum += arr[i]
    right_sum -= arr[i]

    abs = (left_sum - right_sum).abs
    min = [min, abs].min
  end

  min
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 1, solution([3, 1, 2, 4, 3])
  end

  def test_zero
    assert_equal 0, solution([100, 100])
  end
end
