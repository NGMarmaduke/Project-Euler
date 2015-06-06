#!/usr/bin/env ruby
require_relative '../base_classes/problem_base'

# PROBLEM: Find the largest palindrome made from the product of two 3-digit numbers.
# LINK: https://projecteuler.net/problem=4

class Problem4 < ProblemBase

  def initialize
    @a = 999
    @b = 999
  end

  def solve
    largest = []
    loop do
      palindrome = do_check

      if !palindrome.nil?
        largest.push(palindrome)
        return largest.sort.last if increment_and_reset
        next
      end

      @b -= 1

      if @b == 0 # No Palindrome for this value of a
        return largest.sort.last if increment_and_reset
      end
    end
  end

  def increment_and_reset
    @a -= 1
    @b = 999

    if @a == 0 # We have proccessed all numbers
      return true
    end
  end

  def do_check
    check = @a*@b
    return check if is_num_palindrome?(check)
  end

  def is_num_palindrome?(num)
    num == num.to_s.reverse.to_i
  end
end

puts Problem4.new().solve

