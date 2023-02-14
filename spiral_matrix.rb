def spiral_order(matrix)
  arr = []

  while matrix.size.positive?
    matrix.shift.each do |n|
      arr << n
    end
    matrix = matrix.transpose.reverse
  end

  arr
end

matrix = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

rectangle = [
  [1,2,3,4],
  [5,6,7,8],
  [9,10,11,12]
]

p spiral_order(rectangle)
