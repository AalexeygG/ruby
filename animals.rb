class Bird
	def talk
		puts "Chirp! Chirp!"
	end
	
	def move(destination)
		puts "Flying to the #{destination}."
	end
end

class Dog
	attr_reader :name, :age
	
	def name=(value)
		if value == ""
			raise "Name is wrong!"
		end
		@name = value
	end
	
	def age=(value)
		if value < 0
			raise "Where is your brain?"
		end
		@age = value
	end
	
	def report_age
		puts "#{@name} is #{@age} years old."
	end
	
	def talk
		puts "#{@name} says Bark"
	end
	
	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end
end

class Cat
	def talk
		puts "Meow!"
	end
	
	def move(destination)
		puts "Flying to the #{destination}."
	end
end

dog = Dog.new
dog.name = "ALexandro"
dog.age = 3
dog.move("house")
dog.talk
dog.report_age