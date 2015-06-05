#!/usr/bin/env ruby
require_relative '../base_classes/problem_base'

class Problem2 < ProblemBase
  def solve
    sum = 2
    a = 1
    b = 2

    loop do
      next_num = a + b
      sum += next_num if next_num % 2 == 0
      break if next_num >= 4_000_000

      a = b
      b = next_num
    end

    sum
  end
end

puts Problem2.new().solve

