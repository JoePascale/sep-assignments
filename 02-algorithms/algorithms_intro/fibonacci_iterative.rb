#!/Users/joepascale/.rvm/rubies/ruby-2.4.0/bin/ruby -w

def fib(n)
 first = 0
 second = 1
 (0..n-1).each do
   temp = first
   first = second
   second = temp + second
 end
 second
end

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)
puts fib(7)
puts fib(8)
puts fib(9)
