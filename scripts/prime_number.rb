require 'prime'

prime_array = Prime.take_while {|x| x < 2_000_000}

prime_sum = prime_array.reduce(:+)

p prime_sum