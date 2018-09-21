require 'pry'

class Owner
  
  attr_accessor :say_species, :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @pets = {:cats => [], :dogs => [], :fishes => []}
    @@all << self # keeps track of the owners that have been created
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

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
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
    @pets.each do |k, v|
      @pets[k].each do |animal|
        animal.mood = 'nervous'
      end
    end

    @pets.clear
  end

  def list_pets
    sentence = "I have "
    pets_array = @pets.keys

    # returns number of each type of pet
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count

    sentence + "#{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
