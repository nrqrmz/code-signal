# def solution(string)
#   raw_letters = string.chars
#   unique_letters = raw_letters.uniq
#   first_unique = ''

#   unique_letters.map do |letter|
#     first_unique << letter if raw_letters.count(letter) == 1
#   end

#   first_unique[0] || '_'
# end

def solution(s)
  s.chars.uniq.each{|c| return c if s.chars.count(c) == 1}
  return "_"
end

# a = "abacabad"
b = "abacabaabacaba"

# p solution(a) # c
p solution(b) # _
