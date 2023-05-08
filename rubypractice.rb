
class Greeter
	attr_accessor :name
	def initialize(name = "World")
		@name = name
	end
	def say_hi
		puts "Hi #{@name}!"
	end
	def say_bye
		puts "Bye #{@name}, come back soon!"
	end
end

gt = Greeter.new
gt.say_hi
gt.say_bye

gt = Greeter.new("Chase")
gt.say_hi
gt.say_bye
puts gt.name
