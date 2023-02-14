require 'pry-byebug'

def solution(matrix)
  matrix.transpose.map do |line|
    ghosted = false
    line.map do |number|
      ghosted = true if number == 0
      ghosted ? 0 : number
    end.sum
  end.sum
end

matrix = [[0, 1, 1, 2],
          [0, 5, 0, 0],
          [2, 0, 3, 3]]

p solution matrix
