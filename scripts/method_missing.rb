class Author

	attr_accessor :name, :description

	def	initialize name, description
		@name = name
		@description = description
	end

	def print key = ""
		if (key.empty?) 
			puts "Name: " + name
			puts "description" + description
		elsif key == "name"
			puts name
		elsif key == "description"
			puts description
		else
			puts "Invalid key name" 
		end 
	end

	def method_missing method_name, *arguments, &block
		if method_name =~ /print_(.*)/
			print ($1)
		else 
			puts "method does not exists"
		end
	end

	def respond_to_missing? method_name, include_private = false
		method_name.to_s.start_with?('print_') || super
	end	
end


auth = Author.new "Tareq", "Hellow Wrold testing"
auth.print
auth.print_description
auth.hellow_world
