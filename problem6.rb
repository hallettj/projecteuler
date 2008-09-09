#!/usr/bin/env ruby
#

def sum_of_squares(bound)
  (1..bound).inject do |s,n|
    s + n*n
  end
end

def square_of_sum(bound)
  sum = (1..bound).inject(0) do |s,n|
    s + n
  end
  sum * sum
end

puts square_of_sum(100) - sum_of_squares(100)
