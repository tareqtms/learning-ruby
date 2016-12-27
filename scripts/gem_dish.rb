require 'rubygems'
require 'dish'

hash = {
	movie: "Star Wars",
	actors: [
		{name: "Tareq", age: 31},
		{name: "Rumana", age: 27}
	]
}

obj = Dish(hash)
puts obj.movie
obj.actors.each do |actor|
puts actor.name
puts actor.age
end