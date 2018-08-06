# https://app.codility.com/programmers/lessons/3-time_complexity/frog_jmp/

def solution(x, y, d)
  ((y - x) / d.to_f).ceil
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 3, solution(10, 85, 30)
  end

  def test_exact_jump
    assert_equal 4, solution(0, 100, 25)
  end
end
