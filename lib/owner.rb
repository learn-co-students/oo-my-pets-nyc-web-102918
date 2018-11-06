require 'pry'
class Owner
  attr_reader  :species
  attr_accessor :name,:pets
  @@all=[]


  def self.reset_all
    @@all=[]
  end


  def initialize(name, pets={fishes: [], dogs: [],cats: []},species="human")
    @name=name
     @pets=pets
     @species=species
     @@all << self
  end

  def self.all
     @@all
  end


  def sell_pets
    pets.each{|type,list|list.each{|pet|pet.mood="nervous"}}
    #pets={fishes: [], dogs: [],cats: []}
  end


  def list_pets
    count=pets.map{|type,list|list.count}
     "I have #{count[0]} fish, #{count[1]} dog(s), and #{count[2]} cat(s)."
  end

  def self.count
    self.all.length

  end

  def say_species
    "I am a #{species}."
  end

  def buy_cat(name)
     @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
     @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
     @pets[:fishes] << Fish.new(name)
  end

  def improve_mood(type)
    pets[type.to_sym].each{|pet|pet.mood = "happy"}
  end



  def play_with_cats
    improve_mood("cats")
  end

  def walk_dogs
    improve_mood("dogs")
  end

  def feed_fish
    improve_mood("fishes")
  end


end
