class SimpleArray

	attr_reader :array
	def initialize
		@array = []
	end

	def push item
		array.push(item)
	end

	def each &block
		array.each do |item|
			block.call item
		end
		array
	end

end

arr = SimpleArray.new

arr.push(1)
arr.push(2)
arr.push(3)

arr.each {|item| puts "Item : #{item}"}