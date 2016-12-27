require 'prime'

class Integer 
  def divisors
    divs = prime_division.flat_map {|n, p| [n] * p}
    [1] + (1..divs.size).flat_map {|x| divs.combination(x).map {|v| v.inject(:*)}}.uniq
  end
end