class BankAccount
	attr_reader :name, :balance

	def initialize(name)
		@name = name
		@balance = 0
		@transactions = []
	end

	def debit(description, amount)
		add_transaction(description, -amount)
	end

	def credit(description, amount)
		add_transaction(description, amount)
	end

	def add_transaction(description, amount)
		@transactions.push(description:description, amount:amount)
		@balance += amount
	end

	def statement
		puts "-" * 80
		puts "Account Name: " + @name
		puts "-" * 80
		@transactions.each do |transaction|
			puts transaction[:description].ljust(60) + transaction[:amount].to_s.rjust(20)
		end
		puts "-" * 80
		puts "Balance: ".ljust(60) + @balance.to_s.rjust(20)
		puts "-" * 80
	end
end

puts "Welcome to Ruby Bank! Do you want to create an account? (y/n)"
answer = gets.chomp.downcase
if answer == "y"
	puts "Your name please?"
	name = gets.chomp
	account = BankAccount.new(name);
	puts "Congratulations! You have created a bank account with us!"
	puts "Do you want to make an initial Deposit? (y/n)"
	ans_d = gets.chomp.downcase
	if (ans_d == "y")
		puts "What amount you would like to deposit?"
		deposit_amount = gets.chomp.to_f
		account.credit("Initial Deposit", deposit_amount)
		puts "You have made the inital deposit! Your current balance is now " + account.balance.to_s
	end
	loop do 
		puts "Pease type:" 
		puts "  -'a' for adding a transaction"
		puts "  -'b' for checking balance"
		puts "  -'s' for a mini statement"
		puts "  -'e' to leave the bank!"
		action = gets.chomp.downcase
		case action
		when "a"
			loop do
				puts "Pls type a description for the transaction"
				description = gets.chomp
				puts "What's the amount?"
				amount = gets.chomp.to_f
				puts "Is it a debit or credit transaction? (d/c)"
				loop do	
					type = gets.chomp.downcase
					
					if (type == "d") 
						account.debit(description, amount)
						break
					elsif type == "c"
						account.credit(description, amount)
						break
					else
						puts "Invalid input please type d for debit or c for credit."
					end 
				end
				puts "Transaction added, do you want to add another? (y/n)"
				ans = gets.chomp.downcase
				break if (ans != "y")
			end
		when "b"
			puts "-" * 80
			puts "Your current balance is " + account.balance.to_s
			puts "-" * 80
		when "s"
			account.statement
		when "e"
			break
		else 
			puts "Invalid input! Please try again!"
			next
		end
	end

elsif answer != "n"
	puts "Sorry, wrong input! Pls type 'y' to create an account or 'n' to go back to your home!"
end

puts "Thanks for coming to our bank! See you again soon!"