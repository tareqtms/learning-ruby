require 'rubygems'
require 'httparty'

class ApiCaller 
	include HTTParty
	base_uri "edutechional-resty.herokuapp.com/"

	def posts
		self.class.get('/posts.json')
	end

end

api = ApiCaller.new

#p api.posts
api.posts.each do |post|
	puts "Title: #{post['title']} | Description; #{post['description']}"
end

response = HTTParty.get("http://api.stackexchange.com/2.2/questions?site=stackoverflow")
#puts response.body
#puts response.code
#puts response.message
#puts response.headers.inspect

class StackExchange
	include HTTParty
	base_uri "api.stackexchange.com/2.2/"

	def initialize service
		@options = {query:{site:service}}
	end
	#def questions
	#def users
	%w(questions users).each do |info| 
		define_method(info) do |page=1|
			params = @options;
			params[:query][:page] = page
			self.class.get("/#{info}", params)
		end
	end
end

st_api = StackExchange.new('stackoverflow')
#puts st_api.questions
#puts st_api.users (3)