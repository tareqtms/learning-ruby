#File.open("test_file.txt", "w+") { |f| f.write("Hello Guys")}
#file = File.new("test_file.txt", "")
#file = File.read("test_file.txt")

#puts file
#File.delete("test_file.txt")

file = File.new("test_log.txt", "a")

10.times do
	puts "Saving log...." 
	sleep 1
	file.puts("Saved successfully! @ #{Time.new}")
end