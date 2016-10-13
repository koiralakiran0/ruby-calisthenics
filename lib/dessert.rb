class Dessert
	#Default constructor for the class (setter)
	def initialize(name, calories)
		@name = name
		@calories = calories
	end

	#Getter or accessor method for @name
	def name
		@name
	end
	
	#Setter or mutator for @name
	def name=(new_name)
		@name = new_name
	end
	
	#Getter or accessor method for @calories
	def calories
		@calories
	end
	
	#Setter or mutator for @calories
	def calories=(new_calories)
		@calories = new_calories
	end
	
	#Method that returns true if dessert has less than 200 calories
	def healthy?()
		if(calories < 200)
			return TRUE
		end
	end
	
	#Method that returns true for all desserts
	def delicious?()
		return TRUE
	end
end

class JellyBean < Dessert
	#Constructor
	def initialize(flavor)
		@calories = 5
		@name = flavor + " jelly bean"
		@flavor = flavor
	end
	
	#Getter or accessor method for @name
	def flavor
		@flavor
	end	
	
	#Setter or mutator for @flavor
	def flavor=(new_flavor)
		@flavor = new_flavor
	end
	
	def delicious?()
	  super
		if(flavor=="licorice")
			return false
		else
			return TRUE
		end
	end
end


