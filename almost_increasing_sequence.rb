def solution(arr)
  max, lower_max, disorder = 0, 0, 0

  arr.each do |val|
    if val > max
      lower_max = max
      max = val
    elsif val > lower_max
      max = val
      disorder +=1
    else
      disorder +=1
    end
  end

  disorder <=1
end

a = [1, 3, 2, 1]
b = [1, 3, 2, 3]
c = [0, -2, 5, 6]
p solution a
p solution b
p solution c
