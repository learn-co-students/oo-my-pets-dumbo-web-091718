require 'pry'
  class Owner
      attr_accessor :pets, :name
      attr_reader :species

      @@all = Array.new

      def initialize(species)
        @species = species
        @pets = {:fishes=>[], :cats=>[], :dogs=>[]}

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
      return "I am a #{species}."
    end

  def buy_fish(fish)
     @pets[:fishes] << Fish.new(fish)
   end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet, attribute|
      attribute.each do |pet|
         pet.mood = "nervous"
      end
       pets[pet]= Array.new
    end
  end

  def list_pets
   return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
