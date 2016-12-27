class String
	def censor(bad_word)
		self.gsub! "#{bad_word}", "_CENSORED_"
	end
end

line = "You funcky guy?"

p line.censor("funcky");