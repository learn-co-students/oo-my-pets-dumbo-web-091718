class Fish
  # code goes here
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def mood=(mood)
    @mood = mood
  end

  def mood
    @mood ||= "nervous"
  end
end
