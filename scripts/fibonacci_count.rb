fib_count, last_num, num = 1, 0, 1

while num.to_s.length < 1000
	fib_count += 1
	last_num, num = num, last_num + num
end

p fib_count