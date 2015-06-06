#!/usr/bin/env ruby
require_relative '../base_classes/problem_base'

# PROBLEM: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# LINK: https://projecteuler.net/problem=5

class Problem5 < ProblemBase
  def initialize
    @numbs = (1..20).to_a.reverse
  end

  def solve
    loop_with_index do |i|
      puts "checking #{(i+1)*20}"
      return (i+1)*20 if is_divisible?((i+1)*20)
    end
  end

  def is_divisible?(check)
    @numbs.each_with_index do |num , i|
      break unless is_an_integer?(check.to_f / num)
      return true if (i+1) == @numbs.length
    end
    false
  end
end

puts Problem5.new().solve

