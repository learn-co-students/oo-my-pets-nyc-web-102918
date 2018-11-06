class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  #@pets = {}
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
    #{fishes: [], cats: [], dogs: []}
    #{:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    #@@all.count
    @@all = []
  end

  def self.count
    @@all.count
    #@@all = []
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    self.pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end
end
