def solution(arr)
  arr[0...-1].map.with_index { |_, i| arr[i] * arr[i + 1] }.max
end

a = [1, 2, 3, 4, 5]

p solution a
