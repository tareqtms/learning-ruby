require 'rubygems'
require 'decisiontree'

attributes = ['Age', 'Education', 'Marital Status', 'Income Level']

training = [
	['20-30', 'PhD', 'Single', 'High', 1],
	['20-30', 'Masters', 'Married', 'High', 1],
	['20-30', 'High School', 'Single', 'High', 0],
	['18-20', 'High School', 'Single', 'High', 1],
	['18-20', 'Masters', 'Single', 'High', 0],
	['18-20', 'Primary', 'Single', 'High', 0],
	['<18', 'High School', 'Single', 'Low', 1],
	['<18', 'Primary', 'Single', 'High', 0],
	['<18', 'High School', 'Married', 'Low', 1]
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 1, :discrete)
dec_tree.train

test = ['<18', 'High School', 'Single', 'High', 1]

decision = dec_tree.predict(test)

puts "Predict: #{decision}"