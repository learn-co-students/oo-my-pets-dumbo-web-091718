require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :count, :pets

  @@all = []

  def initialize(species)
    @@all << self
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |ind_dog|
      ind_dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |ind_cat|
      ind_cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |ind_fish|
      ind_fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |animal, spef_an|
      spef_an.each do |anim|
        anim.mood = "nervous"
      end
    end
    @pets = []
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end
