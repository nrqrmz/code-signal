image = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

# jeez = image.transpose.map(&:reverse)
# image.each do |line|
#   p line
# end
# puts ""
# jeez.each do |line|
#   p line
# end


def rotate(matrix)
  size = matrix.length - 1
  arr = []

  matrix.each_with_index do |line, i|
    arr << matrix[i].dup
    line.each_with_index do |_, j|
      if size - j <= i
        matrix[i][j] = arr[size - j][i]
      else
        matrix[i][j] = matrix[size - j][i]
      end
    end
  end

  matrix
end

# p image
p rotate image
