def solution(s)
  string = [""]
  stack = []

  s.chars.each do |char|
      if '(' == char
          stack << string
          string = ['']
      elsif ')' == char
          old_string = stack.pop
          old_string << string
          old_string << ''
          string = old_string
      else
          string[-1] = string.last + char
      end
  end

  reverse_helper(string, false)
end
def reverse_helper(arr, order = false)
  if order
      arr.reverse.map{|x| x.class == Array ? reverse_helper(x) : x.reverse}.join
  else
      arr.map{|x| x.class == Array ? reverse_helper(x,true) : x}.join
  end
end

p solution 'foo'
p solution 'foo(bar)baz'
p solution 'foo(bar)baz(blim)'
p solution '(oga(ti)nas)'

# p solution('(bar)')
# p solution "foo(bar)baz"
# p solution()
