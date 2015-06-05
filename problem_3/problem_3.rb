#!/usr/bin/env ruby
require_relative '../base_classes/problem_base'
require 'prime'

# PROBLEM: What is the largest prime factor of the number 600851475143 ?

class Problem3 < ProblemBase
  def solve
    number = 600851475143
    loop_with_index do |i|
      divider = i += 1
      check = number.to_f / divider
      return check.to_i if is_an_integer?(check) && Prime.prime?(check)
    end
  end
end

puts Problem3.new().solve

