class Owner

attr_accessor :pets, :name
attr_reader :species

@@all = []

def initialize(species="human")
	@species = species
	@@all << self
	@pets = {fishes: [], cats: [], dogs: []}
end

def self.all
@@all
end


def self.reset_all
all.clear
end

def self.count
	all.length

end

def say_species
	return "I am a #{self.species}."
end

def buy_fish(fish_name)
	new_fish = Fish.new(fish_name)
	self.pets[:fishes] << new_fish

end

def buy_cat(cat_name)
	new_cat = Cat.new(cat_name)
	self.pets[:cats] << new_cat
end

def buy_dog(dog_name)
	new_dog = Dog.new(dog_name)
	self.pets[:dogs] << new_dog
end

def walk_dogs
self.pets[:dogs].each do |dog|
	dog.mood = "happy"
end

	def play_with_cats
 		self.pets[:cats].each do |cat|
 			cat.mood = "happy"
 	end
 	end
 
 	def feed_fish
 		self.pets[:fishes].each do |fish|
 		fish.mood = "happy"
 		end
 	end
 
 	def sell_pets
 		all_pets = self.pets.values.flatten
 		all_pets.each do |pet|
 			pet.mood = "nervous"
 		end
 		self.pets = {fishes: [], cats: [], dogs: []}
 	end
 
 	def list_pets
 	"I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."	end

end
end