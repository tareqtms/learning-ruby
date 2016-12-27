starting_sentence = "Hello from Tareq"
match_sentence = starting_sentence.downcase
#sentence_array = starting_sentence.split(//).map(&:downcase)
#accurate_count = sentence_array - [" "]
final_sentence = starting_sentence.gsub(/[a-w]/i, "_")
letter_count = (starting_sentence.split(//) - [" "]).count
replace_count = 0
while replace_count < letter_count
	puts "Guess a letter"
	guess = gets.chomp.downcase
	if (match_sentence.include?(guess))
		index = match_sentence.index(guess)
		letter = starting_sentence[index]
		match_sentence[index] = " "
		final_sentence[index] = letter
		replace_count += 1
		puts "Correct! The sentence is now #{final_sentence}"
	else 
		puts "Nice try! Pls try again!"
	end
end

