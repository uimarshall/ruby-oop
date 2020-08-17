class MyCar
    attr_accessor :color
    attr_writer :year
    # attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

# Using the intsance variable  
  def show_color
    puts "The car's color #{@color}"   
  end
# Using the attr_accessor  
  def show_color
    puts "The car's color #{color}"   
  end
  def show_year
    puts "The car's year #{@year}"   
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed
lumina.show_year
lumina.color = "yellow"
lumina.show_color #this will output yellow instaed of white bcos we're using attr_accessor to set the color
puts lumina.color
lumina.year = 2000
lumina.show_year
puts lumina.year # this won't work bcos we only have attr_writer, so we can read

# Traceback (most recent call last):
# attr_writer.rb:61:in `<main>': undefined method `year' for #<MyCar:0x0000000006446320> (NoMethodError)
# Did you mean?  year=