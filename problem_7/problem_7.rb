#!/usr/bin/env ruby
require_relative '../base_classes/problem_base'
require 'prime'

# PROBLEM: What is the 10 001st prime number?
# LINK: https://projecteuler.net/problem=7

class Problem7 < ProblemBase
  def solve
    Prime.first(10_001).last
  end
end

puts Problem7.new().solve

