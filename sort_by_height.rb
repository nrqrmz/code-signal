def solution(a)
  nega_indices = get_negative_indices(a)
  a.delete(-1)
  n = a.size - 1

  n.times do |time|
    limit = -1 - time

    a[0...limit].each_with_index do |place, idx|
      a[idx], a[idx+1] = a[idx+1], a[idx] if a[idx] > a[idx + 1]
    end
  end

  nega_indices.each { |tree| a.insert(tree, -1) }

  a
end

def get_negative_indices(arr)
  nega_indices = []
  arr.map.with_index { |number, index| nega_indices << index if number.negative? }
  nega_indices
end

arr = [-1, 150, 190, 170, -1, -1, 160, 180]

p solution(arr)

# For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
# solution(a) = [-1, 150, 160, 170, -1, -1, 180, 190]
