# def solution(arr)
#   duplicates = []
#   positions = []

#   arr.each do |n|
#     duplicates << n if arr.count(n) > 1
#     positions << n if duplicates.include?(n) && duplicates.count(n) > 1
#   end

#   return -1 if duplicates.size == 0

#   positions[0]
# end

def solution(array)
  map = {}
  dup = nil
  
  array.each do |v|
    map[v] = (map[v] || 0 ) + 1

    if map[v] > 1
      dup = v
      break
    end
  end

  return -1 if dup.nil?

  dup
end

a = [2, 1, 3, 5, 3, 2] # 3
b = [2, 2] # 2
c = [1, 1, 2, 2, 1] # 1
d = [2, 4, 3, 5, 1] # -1

p solution(a)
p solution(b)
p solution(c)
p solution(d)
