require 'humanize'
total, no_space_array = 0, []
(1..1000).to_a.map(&:humanize).each {|x| no_space_array << x.delete(" ").delete("-")}
no_space_array.each {|y| total += y.length}

p total

