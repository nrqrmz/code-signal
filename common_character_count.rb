def solution(str1, str2)
  counter = 0
  h1 = objectifier(str1)
  h2 = objectifier str2

  h1.each { |k, v| counter += h1[k] == h2[k] ? h1[k] : h1[k] > h2[k] ? h2[k] : h1[k] if h2.key?(k) }

  counter
end

def objectifier(str)
  h = {}
  str.chars.each { |l| h.key?(l) ? h[l] += 1 : h[l] = 1 }
  h
end


s1 = "aabcc"
s2 = "adcaa"
p solution s1, s2
