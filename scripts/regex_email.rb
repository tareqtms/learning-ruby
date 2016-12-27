VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

def is_valid_email? email
	email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("test1@mitcare.com") ? "Valid" : "Invalid"
p is_valid_email?("test1_h@mitcare.com") ? "Valid" : "Invalid"
p is_valid_email?("test1.test@mitcare.com") ? "Valid" : "Invalid"
p is_valid_email?("test-tareq@mitcare.com") ? "Valid" : "Invalid"
p is_valid_email?("test-tareq@mitcare.com.bd") ? "Valid" : "Invalid"
p is_valid_email?("test@mitcare") ? "Valid" : "Invalid"
p is_valid_email?("test1mitcare.com") ? "Valid" : "Invalid"
p is_valid_email?("test1@mitcare.") ? "Valid" : "Invalid"