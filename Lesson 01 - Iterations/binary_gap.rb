# https://app.codility.com/programmers/lessons/1-iterations/binary_gap/

def solution(number)
  binary_number = number.to_s(2)

  zeros = binary_number.split('1')
  zeros.pop if number % 2 == 0

  return 0 if zeros.empty?
  zeros.map { |group| group.length }.max
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 5, solution(1041)
  end

  def test_zero_at_the_end
    assert_equal 1, solution(20)
  end

  def test_minimum
    assert_equal 0, solution(1)
  end
end
