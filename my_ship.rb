# HOMEWORK: Create A Spaceship Class from User Stories

# Release 0. Pseudocode
=begin
need to create a spaceship

set color and style

be able to view speed of travel


accelerate and decelerate to a defined speed


turn left and turn right


switch between weapons

fire weapon



=end


# Release 2: Initial Solution

class Spaceship
	attr_accessor :speed, :position, :weapon, :max, :loaded
	attr_reader :color,:style

	def initialize(str1, str2)
		@speed = 50
		@color = str1
		@style = str2
		@position = 0
		@weapon = "laser"
		@loaded = false
	end
	def stop
		currentSpeed = speed
		until(currentSpeed == 0)
			currentSpeed -= 1
		@speed = currentSpeed
		end 
	end

	def changeSpeed(user_input)
		currentSpeed = speed
		max = 400

		if(user_input > max && @loaded == false)
			puts "max speed 400"
			user_input = max
		else
			load
			user_input = max
		end

		if(user_input > currentSpeed)
			until(currentSpeed == user_input)
				currentSpeed += 1
				@speed = currentSpeed
			end

		else
			until(currentSpeed == user_input)
				currentSpeed -= 1
				@speed = currentSpeed
			end

		end
	end

	def turnRight
		@position = position + 1
	end
	def load
		@max = 370
	end

	def turnLeft
		@position = position + 1

	end

	def switchWeapon(new_weapon)
			@weapon = new_weapon
	end

	def fireWeapon
		puts "*"
	end

end

class Cargo

	attr_reader :weight

	def initialize
		@weight = 100
	end
end




	
ship = Spaceship.new("red", "saucer")
p ship.speed
 ship.stop 
p ship.speed
	ship.changeSpeed(450)
p ship.speed
p ship.weapon
 ship.switchWeapon("gun")
p ship.weapon

cargo = Cargo.new
p cargo.weight
ship.loaded = true
ship.speed

# Release 3: Add a Feature




# Release 4: Implement a New Class





# Release 1: Write Driver Code



