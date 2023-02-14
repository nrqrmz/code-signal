def solution(n)
  half = n.to_s.size / 2
  letters = n.to_s.chars
  numbers = letters.map(&:to_i)
  numbers[0...half].sum == numbers[half..-1].sum
end

p solution(1230)
