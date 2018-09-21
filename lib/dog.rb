class Dog

  attr_reader :name # a getter
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
