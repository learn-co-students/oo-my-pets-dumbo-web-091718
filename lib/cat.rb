class Cat

  attr_accessor :mood
  attr_reader :name, :mood

  # code goes here
  def initialize(name)
   @name = name
   @mood = 'nervous'
  end
          #
          # def name
          #   @name = "crookshanks"
          # end

          # def mood
          #     @mood = mood
          # end
end
