  class Cat
  attr_reader :name
  attr_accessor :mood
  @@all=[]

  def initialize(name, mood="nervous")
    @name=name
    @mood=mood
  end

end
