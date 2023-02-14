matrix = [
  [1, 2],
  [3, 4]
]

def matrix_reshape(mat, r, c)
  list = mat.flatten
  arr = []
  list.each_slice(c) { |items| arr << items }
  list.size == r * 4 ? arr : mat
end

p matrix_reshape matrix, 1, 4
