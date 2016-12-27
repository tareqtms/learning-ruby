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

	methods = %w(name description)
	methods.each do |method_name|
		define_method("print_#{method_name}") do ||
			print(method_name)
		end
	end
end


auth = Author.new "Tareq", "Hellow Wrold testing"
auth.print
auth.print_description
