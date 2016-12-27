def do_something
	5.times do 
		puts "Hello World!"
		yield
	end
end

#do_something do 
#	puts "Something from block"
#end

def do_another_thing
	print "Enter your name: "
	name = gets.chomp
	puts "That's a cool name, #{name}!"
	yield name
end

#do_another_thing do |input_name|
#	puts "Hey! #{input_name}, I am from block! Remember me?"
#end


def do_something_else &block
	print "Enter your name: "
	name = gets.chomp
	puts "That's a cool name, #{name}!"
	block.call name if block_given?
end

do_something_else do |input_name|
	puts "Hey! #{input_name}, I am from block! Remember me?"
end