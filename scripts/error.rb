def error_logger e 
	File.open("logs/error_log.txt","a") do |file|
		file.puts("#{e}  @ #{Time.now}")
	end
end

def test_function(arg)
end

begin 
	n = 10/0
	#n = nil + 20
	#test_function #no argument error
rescue ZeroDivisionError => e
	error_logger "Zero Division Error: #{e}"
	puts "Zero Division Error: #{e}"
rescue NoMethodError => e
	error_logger "Undefined Method Error: #{e}"
	puts "Undefined Method Error: #{e}"
rescue StandardError => e
	error_logger "Error: #{e}"
	puts "Error: #{e}"
end
