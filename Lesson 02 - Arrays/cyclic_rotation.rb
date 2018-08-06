# https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/

def solution(arr, steps)
  return [] if arr.nil? || arr.size == 0
  return arr if steps == 0

  shifted_arr = arr.unshift(arr.pop)

  solution(shifted_arr, steps - 1)
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_nil_array
    assert_equal [], solution(nil, 1)
  end

  def test_empty_array
    assert_equal [], solution([], 1)
  end

  def test_zero_steps
    assert_equal [1, 2, 3], solution([1, 2, 3], 0)
  end

  def test_one_step
    assert_equal [3, 1, 2], solution([1, 2, 3], 1)
  end

  def test_multiple_steps
    assert_equal [2, 3, 4, 1], solution([1, 2, 3, 4], 3)
  end
end
