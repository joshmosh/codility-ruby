# https://app.codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/

def solution(arr)
  elements = arr.size
  counter = Array.new(elements + 1, 0)

  arr.each do |num|
    counter[num - 1] = 1
  end

  counter.index { |num| num == 0 } + 1
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_empty
    assert_equal 1, solution([])
  end

  def test_example_input
    assert_equal 4, solution([2, 3, 1, 5])
  end

  def test_no_start_input
    assert_equal 1, solution([2, 3])
  end
end
