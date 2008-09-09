#!/usr/bin/env ruby
#

a = 0
b = 1
even_sum = 0

while b <= 4000000
  even_sum += b if b % 2 == 0
  a, b = b, a + b
end

puts even_sum
