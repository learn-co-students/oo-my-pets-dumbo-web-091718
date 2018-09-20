class Dog

  attr_reader :name, :mood

  def initialize(name)
    @name = name
    @species = "dog"
    @mood = ""
  end

  def mood=(status)
    @mood = status
  end

end
