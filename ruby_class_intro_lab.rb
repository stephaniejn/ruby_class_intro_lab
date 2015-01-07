# SuperHero

# Create a class called SuperHero that takes a firstName and lastName. Give each superHero a superPunch method that returns "WHAM!".

class SuperHero

	def initialize first_name, last_name
		@first_name = first_name
		@last_name = last_name
	end

	def super_punch
		return "WHAM!"
	end

end

hero1 = SuperHero.new "cat", "woman"
p hero1

p hero1.super_punch

hero2 = SuperHero.new "spider", "man"
p hero2
p hero2.super_punch


# Robot

# Create a class called Robot that takes name and purpose. Give each robot a greet method that returns "beep boop"

class Robot

	def initialize name, purpose
		@name = name
		@purpose = purpose
	end

	def greet 
		return "beep boop"
	end

end

robot1 = Robot.new "Happy", "Spread Happiness"
p robot1
p robot1.greet

robot2 = Robot.new "Hungry", "Find Food"
p robot2
p robot2.greet

# Starship

# Make a Starship class that takes a model and ownerName.

# Give your StarShip a setTopSpeed method and a getTopSpeedMethod that let you change and read the topSpeed. Assume topSpeed is just a number.

# Give your Starship an accelerateTo method that sets currentSpeed to some number, unless that number is greater than its topSpeed.

class Starship 

	attr_accessor :current_speed

	def initialize model, owner_name
		@model = model
		@owner_name = owner_name
	end

	def set_top_speed new_speed
		@top_speed = new_speed
	end

	def get_top_speed
		@top_speed 
	end

	def accelerateTo new_speed
		if new_speed < @top_speed
			@current_speed = new_speed
		else 
			@current_speed = @top_speed
		end
	end

end

starship1 = Starship.new "Searching for Food", "Hungry Robot"
p starship1
starship1.set_top_speed 100
p starship1.get_top_speed
starship1.accelerateTo 10
p starship1.current_speed

# Dice

# Make a Dice class that takes a numberOfSides. Add a method called roll that randomly returns a number from 1 up to the numberOfSides.

# Create a getRolls method to record that returns (not outputs) a list of arrays containing previous rolls.

class Dice 

	def initialize number_of_sides
		@number_of_sides = number_of_sides
		@rolls = []
	end

	def roll 
		@roll = rand(1..@number_of_sides)
		@rolls.push(@roll)
		@roll
	end

	def getRolls
		@rolls
	end

end
dice1 = Dice.new 5
p dice1
dice1.roll
dice1.roll
dice1.roll
p dice1.roll
p dice1.getRolls

dice2 = Dice.new 6
p dice2
dice2.roll
p dice2.roll
p dice2.getRolls