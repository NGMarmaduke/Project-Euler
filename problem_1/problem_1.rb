#!/usr/bin/env ruby
require_relative '../base_classes/problem_base'

class Problem1 < ProblemBase
  def solve
    sum = 0
    1000.times do |i|
      sum += i if i%3 == 0 || i%5 == 0
    end
    sum
  end
end

puts Problem1.new().solve

