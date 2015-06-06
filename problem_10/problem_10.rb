#!/usr/bin/env ruby
require_relative '../base_classes/problem_base'
require 'prime'

# PROBLEM: Find the sum of all the primes below two million.
# LINK: https://projecteuler.net/problem=10

class Problem10 < ProblemBase
  def solve
    total = 0
    Prime.each do |p|
      break if p >= 2_000_000
      total += p
    end
    total
  end
end

puts Problem10.new().solve

