def merge_sort array
	if (array.length <= 1)
		array
	else
		mid = array.length / 2
		left = merge_sort array[0..mid-1]
		right = merge_sort array[mid..array.length-1]

		merge left, right
	end
end

def merge left, right
	if (left.empty?)
		right
	elsif right.empty?
		left
	else 
		if (left.first < right.first)
			item = left.shift
		else 
			item = right.shift
		end
		[item] + merge(left, right)
	end
end

arr = [34, 2, 1, 5, 3]

p merge_sort arr