require 'pry'
  class Owner
      attr_accessor :pets, :name
      attr_reader :species

      @@all = Array.new

      def initialize(species)
        @species = species
        @@all << self
      end

      def self.all
        @@all
      end

      def self.count
        self.all.count
      end

     def self.reset_all
       @@all.clear
     end

    def say_species
      puts "I am a #{@species}."
    end

   def pets
     @pets = {:fishes=>[], :cats=>[], :dogs=>[]}
   end

  def buy_fish(fish)
     @pets[:fishes] << Fish.new(fish)
   end

  def buy_cat(cat)
    @pets[:cat] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dog] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dog].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fish].each do |fish|
      fish.mood = "happy"
    end
  end


  def sell_pets
    @pets.each do |pet|
      pet.mood = "happy"
    end
  end

  def list_pets
    
  end
end
