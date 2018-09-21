require 'pry'

class Owner
  attr_reader :all, :reset_all, :species, :say_species
  attr_accessor :name, :pets

  @@owners = []
  @@species

  def initialize(name)
    @name = name
    @@species = 'human'
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
  end

  def self.all 
    @@owners
  end

  def pets 
    @pets
  end

  def self.reset_all 
    @@owners = []
  end

  def self.count 
    @@owners.length
  end

  def species 
    @@species 
  end

  def say_species
    "I am a #{@@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood = 'nervous'
      end
      @pets[key] = []
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
