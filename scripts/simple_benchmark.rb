class SimpleBenchmark
	def run
		start_time = Time.now
		yield
		end_time = Time.now
		elapsed_time = end_time - start_time
		puts "Total time elapsed #{elapsed_time}"
	end
end

benchmark = SimpleBenchmark.new

benchmark.run do ||
	5.times do
		print "."
		sleep(rand(0.1..1.0))
	end
end