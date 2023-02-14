matrix = [
  [1,2,3,4],
  [5,1,2,3],
  [9,5,1,2]
]
image = [
  [1,2],
  [2,2]
]

def is_toeplitz_matrix(matrix)
  n = matrix.size - 1
  m = matrix[n].size - 1
  arr = []

  n.times do |i|
    m.times do |j|
      # p [[i, j], [i + 1, j + 1]]
      first = matrix[i][j]
      second = matrix[i + 1][j + 1]
      arr << (first == second)
    end
  end
  arr.all?
end

p is_toeplitz_matrix matrix
# p is_toeplitz_matrix image
