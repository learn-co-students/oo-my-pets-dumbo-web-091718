class Owner

  @@all = []

  ### CLASS METHODS ###
  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end

  ### CLASS OBJECT ATTRIBUTES ###
  attr_reader :species
  attr_writer
  attr_accessor :name, :pets

  ### INITIALIZE NEW CLASS OBJECT ###
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {cats: [], dogs: [], fishes: []}

    @@all << self
  end

  ### CLASS OBJECT METHODS: BUY PETS ###
  def buy_fish(name)
    new_fish = Fish.new(name)
    fishes = @pets[:fishes]
    fishes << new_fish
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    dogs = @pets[:dogs]
    dogs << new_dog
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    cats = @pets[:cats]
    cats << new_cat
  end

  ### CLASS OBJECT METHODS: PET INETERACTIONS ###
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood= "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood= "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood= "happy"
    end
  end

  ### CLASS OBJECT METHODS: MISC ###
  def say_species
    return "I am a #{@species}."
  end

  def list_pets
    num_fish = @pets[:fishes].count
    num_dogs = @pets[:dogs].count
    num_cats = @pets[:cats].count
    return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

  def sell_pets
    @pets.each do |genera, pets|
      pets.each do |pet|
        pet.mood= "nervous"
      end 
    end
    @pets = {cats: [], dogs: [], fishes: []}
  end


end
