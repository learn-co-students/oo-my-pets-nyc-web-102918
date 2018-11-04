require 'pry'

class Owner
  attr_accessor:pets,:name
  attr_reader:species

  @@all=[]

  def initialize(species)
    @species=species
    @pets={fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.reset_all
    @@all.clear
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def say_species
  "I am a #{self.species}."
  end

  def buy_fish(name)
    fish=Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat=Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog=Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    pets.each do |type_of_animal, animal_array|
      animal_array.each do |animal|
        animal.mood = "nervous"
      end
      animal_array.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end


end #end of Owner class method


# h1=Owner.new("Gabby")
# d1=Dog.new("Fido")
# d2=Dog.new("Snoopy")
# h1.buy_dog(d1)
# h2.buy_dog(d2)
#
# binding.pry
#
# 0
