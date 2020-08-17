class User
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says howdy!"
  end

  # def change_info(n, h, w)
  #   @name = n
  #   @height = h
  #   @weight = w
  # end

  # Calling Methods With 'self'
  def change_info(n, h, w)
      self.name = n
      self.height = h
      self.weight = w
  end

  def info
    "#{self.name}, weighs #{self.weight}kg and is #{self.height}m tall."
  end

 
end

user_1=User.new("Lion",200, 3)

puts user_1

user_1.change_info("Elephant", 300, 7)
puts user_1.info

