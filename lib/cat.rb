class Cat
  attr_reader :name, :mood

  def initialize(name)
    @name = name
    @species = "cat"
  end

  def mood=(status)
    @mood = status
  end
end
