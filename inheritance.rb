class Animal
  def initialize
  end
end

class Dog < Animal
  def initialize(color)
    super()
    @color = color
  end
end

bear = Bear.new("stripe")