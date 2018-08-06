# https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/

def solution(nums)
  seen = {}

  nums.each do |num|
    if seen.key?(num)
      seen.delete(num)
    else
      seen[num] = 1
    end
  end

  seen.keys.first
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_return_odd_value
    assert_equal 7, solution([9, 3, 9, 3, 9, 7, 9])
  end
end
