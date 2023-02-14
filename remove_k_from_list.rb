def solution(l, k)
  clean_arr = []

  while l != nil
    if l.value != k
      clean_arr << l.value
    end
    l = l.next
  end

  clean_arr
end
