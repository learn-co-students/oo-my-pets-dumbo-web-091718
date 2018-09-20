class Owner

  attr_reader :species
  attr_accessor :pets, :name

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
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

  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].each {|x| x.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|x| x.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|x| x.mood = "happy"}
  end

  def sell_pets
    @pets.each {|x,y| y.each {|a| a.mood = "nervous"}}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
