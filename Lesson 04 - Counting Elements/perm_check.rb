# https://app.codility.com/programmers/lessons/4-counting_elements/perm_check/

def solution(arr)
  seen = {}

  arr.each do |num|
    seen[num] = true
  end

  seen.size == arr.max && arr.max == arr.size ? 1 : 0
end

solution([1, 2, 3, 4, 6])

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 1, solution([4, 1, 3, 2])
  end

  def test_non_permutation
    assert_equal 0, solution([4, 1, 3])
  end
end
