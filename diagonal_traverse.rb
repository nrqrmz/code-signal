matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

# matrix = [
#   [1, 2],
#   [3, 4]
# ]

def find_diagonal_order(matrix)
  n, m, row, column, direction, result = matrix.length, matrix[0].length, 0, 0, true, []
  return result if matrix.empty? || matrix[0].empty?

  while row < n and column < m
    result << matrix[row][column]
    new_row = row + (direction ? -1 : 1)
    new_column = column + (direction ? 1 : -1)

    if new_row < 0 or new_row == n or new_column < 0 or new_column == m
      if direction
        column == m - 1 ? row += 1 : column += 1
      else
        row == n - 1 ? column += 1 : row += 1
      end

      direction = !direction
    else
      row = new_row
      column = new_column
    end
  end

  result
end

matrix.reverse.each do |line|
  p line
end
puts ''
p find_diagonal_order matrix # [1,2,4,7,5,3,6,8,9]

# def find_diagonal_order(matrix)
#   return [] if matrix.empty? || matrix[0].empty?
#   n, m = matrix.length, matrix[0].length
#   row, column = 0, 0
#   direction = true
#   result = []

#   while row < n and column < m

#     result << matrix[row][column]

#     new_row = row + (direction ? -1 : 1)
#     new_column = column + (direction ? 1 : -1)

#     if new_row < 0 or new_row == n or new_column < 0 or new_column == m
#       if direction
#         if column == m - 1
#             row += 1
#         else
#             column += 1
#         end
#       else
#         if row == n - 1
#             column += 1
#         else
#             row += 1
#         end
#       end

#       direction = !direction
#     else
#       row = new_row
#       column = new_column
#     end
#   end

#   result
# end


# def find_diagonal_order(matrix)
#   return [] if matrix.empty? || matrix[0].empty?
#   n, m = matrix.length, matrix[0].length
#   row, column = 0, 0
#   direction = true
#   result = []

#   while row < n and column < m

#       result << matrix[row][column]

#       # Move along in the current diagonal depending upon
#       # the current direction.[i, j] -> [i - 1, j + 1] if
#       # going down and [i, j] -> [i + 1][j - 1] if going up.
#       new_row = row + (direction ? -1 : 1)
#       new_column = column + (direction ? 1 : -1)

#       # Checking if the next element in the diagonal is within the
#       # bounds of the matrix or not. If it's not within the bounds,
#       # we have to find the next head.
#       if new_row < 0 or new_row == n or new_column < 0 or new_column == m

#           # If the current diagonal was going in the upwards
#           # direction.
#           if direction

#               # For an upwards going diagonal having [i, j] as its tail
#               # If [i, j + 1] is within bounds, then it becomes
#               # the next head. Otherwise, the element directly below
#               # i.e. the element [i + 1, j] becomes the next head
#               if column == m - 1
#                   row += 1
#               else
#                   column += 1
#               end
#           else

#               # For a downwards going diagonal having [i, j] as its tail
#               # if [i + 1, j] is within bounds, then it becomes
#               # the next head. Otherwise, the element directly below
#               # i.e. the element [i, j + 1] becomes the next head
#               if row == n - 1
#                   column += 1
#               else
#                   row += 1
#               end
#           end

#           # Flip the direction
#           direction = !direction
#       else
#           row = new_row
#           column = new_column
#       end
#   end

#   return result
# end
