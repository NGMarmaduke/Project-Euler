#!/usr/bin/env ruby
require_relative '../base_classes/problem_base'

# PROBLEM: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
# LINK: https://projecteuler.net/problem=6

class Problem6 < ProblemBase
  def solve
    nums = (1..100).to_a
    sum_squares = nums.inject(0) { |sum, n| sum + n ** 2 }
    square_sums = nums.inject(:+) ** 2

    square_sums - sum_squares
  end
end

puts Problem6.new().solve

