def fib(n)
  return n if n <= 1

  fib(n-1) + fib(n-2)
end

# n = 100

# (1..n).each do |i|
#   puts fib(i)
# end

puts fib(100)