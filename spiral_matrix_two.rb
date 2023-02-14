def generate_matrix(n)
  arr = Array.new(n) {[]}
  col, row, col_end, row_end, counter = 0, 0, n-1, n-1, 1

  while col <= col_end && row <= row_end
    i = col
    while i <= col_end
      arr[row][i] = counter
      counter += 1
      i += 1
    end
    row += 1

    i = row
    while i <= row_end
      arr[i][col_end] = counter
      counter += 1
      i += 1
    end
    col_end -= 1

    i = col_end
    while i >= col
      arr[row_end][i] = counter
      counter += 1
      i -= 1
    end
    row_end -= 1

    i = row_end
    while i >= row
      arr[i][col] = counter
      counter += 1
      i -= 1
    end
    col += 1
  end

  arr.each do |line|
    p line
  end
end

# generate_matrix(3)
generate_matrix(5)
generate_matrix(1)
