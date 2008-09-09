first_a, first_b = 999, 999
step = 5

def palindrome?(n)
  str = n.to_s
  first_half, second_half = str[0...(str.length / 2)], str[(str.to_s.length / 2)..-1].reverse
  return (first_half == second_half or first_half == second_half.chop)
end

palindromes = []

first_a.downto(100) do |a|
  first_b.downto(100) do |b|
    if palindrome?(a * b)
      palindromes << a * b
    end
  end
end

puts palindromes.sort { |a,b| b <=> a }.first
