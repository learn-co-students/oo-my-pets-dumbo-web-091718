class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner
  
  @@all = []
  
  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self
  end
end
