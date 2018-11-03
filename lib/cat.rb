class Cat
  # code goes here
attr_accessor :mood
attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end


# can initialize a cat (FAILED - 1)
#   initializes with a name (FAILED - 2)
#   can't change its name (FAILED - 3)
#   initializes with a nervous mood (FAILED - 4)
#   can change its mood (FAILED - 5)
