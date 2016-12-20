class ShoppingList
	
	def initialize(name)
		@name = name
		@items = []
	end

	def add_item(name, quantity)
		@items.push(name:name,quantity:quantity)
	end

	def display
		puts "-" * 50
		puts "Name: " + @name
		puts "-" * 50
		@items.each do |item|
			puts item[:name] + "\t\t\t" + item[:quantity]
		end
		puts "-" * 50
	end

end

puts "Give a name for your Shopping list"
name = gets.chomp
list = ShoppingList.new(name)
puts "Do you want to add a new item to the list? (y/n)"
loop do
	answer = gets.chomp.downcase
	if answer == "n"
		break
	elsif answer != "y" 
		puts "Invalid input! Pls type y to add another item or n to cancel. (y/n)"
		next
	end
	puts "What's the name of your new item?"
	itemname = gets.chomp
	puts "What quantity you want to buy?"
	quantity = gets.chomp
	list.add_item(itemname, quantity)
	puts "Do you want to add another item? (y/n)"
end

puts "Here is your shopping list!"
list.display