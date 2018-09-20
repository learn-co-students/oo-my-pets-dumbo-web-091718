class Fish

  attr_reader :name, :mood

  def initialize(name)
    @name = name
    @species = "fish"
  end

  def mood=(status)
    @mood = status
  end

end
