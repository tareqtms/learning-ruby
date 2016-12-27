require 'rubygems'
require 'decisiontree'

attributes = ['Temp']

training = [
	[0, 'F'],
	[40, 'D'],
	[50, 'C'],
	[60, 'B'],
	[70, 'A'],
	[80, 'A+']
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'F', :continuous)
dec_tree.train

test = [39, 'D']

decision = dec_tree.predict(test)

puts "Predict: #{decision}"
puts "Reality: #{test.last}"