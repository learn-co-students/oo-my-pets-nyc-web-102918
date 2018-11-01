require 'pry'
class Owner
  # code goes here
attr_accessor :pets, :name
attr_reader :species
@@all = []

  def initialize(pets, species="human")
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species =species
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count

  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."

  end

  def buy_cat(name)

    cat_instance = Cat.new(name)
    @pets[:cats] << cat_instance

  end

  def buy_dog(name)

    dog_instance = Dog.new(name)
    @pets[:dogs] << dog_instance

  end

  def buy_fish(name)

    fish_instance = Fish.new(name)
    @pets[:fishes] << fish_instance

  end

  def walk_dogs
    @pets[:dogs].each do |element|
      element.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |element|
      element.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |element|
      element.mood = "happy"
    end
  end

  def sell_pets
    @pets[:fishes].each do |element|
      element.mood = "nervous"

    end

      @pets[:dogs].each do |element|
        element.mood = "nervous"
      end

        @pets[:cats].each do |element|
          element.mood = "nervous"
        end
        @pets[:fishes].clear
        @pets[:dogs].clear
        @pets[:cats].clear
  end

  def list_pets

    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."


  end




end
