require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader  :species
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def buy_cat(cat_name)
    self.pets[:cats] << cat_name = Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    self.pets[:dogs] << dog_name = Dog.new(dog_name)
  end

  def buy_fish(fish_name)
    self.pets[:fishes] << fish_name = Fish.new(fish_name)
  end

  def say_species
    "I am a human."
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |k, v|
      v.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets[:fishes].clear
    pets[:dogs].clear
    pets[:cats].clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
