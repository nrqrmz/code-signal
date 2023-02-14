def solution(crypt, solution)
  map = {}
  arr = []
  solution.each { |pair| map[pair[0]] = pair[1] }
  crypt.each do |word|
    new_word = []
    word.chars.each do |letter|
      new_word << map[letter]
    end
    arr << new_word.join
  end
  numbers = arr.map do |word|
    word[0] == '0' && word.size > 1 ? -1 : word.to_i
  end
  numbers[0] + numbers[1] == numbers[2]
end

# crypt = ["SEND", "MORE", "MONEY"] # true
# solution = [["O","0"],
#             ["M","1"],
#             ["Y","2"],
#             ["E","5"],
#             ["N","6"],
#             ["D","7"],
#             ["R","8"],
#             ["S","9"]]

crypt = ["TEN", "TWO", "ONE"] # false
solution = [["O","1"],
            ["T","0"],
            ["W","9"],
            ["E","5"],
            ["N","4"]]

p solution(crypt, solution)
