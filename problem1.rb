#!/usr/bin/env ruby
#

multiples = []
factor = 1

while factor * 3 < 1000
  multiples << factor * 3
  multiples << factor * 5 if factor * 5 < 1000
  factor += 1
end

puts multiples.uniq.inject(0) { |a,b| a + b }
