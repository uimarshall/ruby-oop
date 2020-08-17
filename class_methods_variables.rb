=begin
CLASS METHODS AND VARIABLES
=========================================================
We already have instance variables & methods  
That is, they are methods that pertain to an instance or object of the class.

There are also class level methods, called class methods. 
Class methods are methods we can call directly on the class itself,without having to instantiate any objects. 

When defining a class method, we prepend the method name with the reserved word "self" keyword:

CONSTRUCTOR METHOD
=======================================================================================
Remember that: "initialize" is the constructor method in Ruby
"initialize" gets called every time we instantiate a new object via the "new" method.

=end

class StudentAssembly
    @@num_of_students = 0
# "initialize" is the constructor method and will run once an instance is created
    def initialize
        @@num_of_students += 2
        
    end
    def self.num_in_class
     puts  @@num_of_students 
        
    end
    
end

attendance_1 = StudentAssembly.new
attendance_2 = StudentAssembly.new

StudentAssembly.num_in_class

class Gamy
    # class constants:certain variables that you never want to change
    MAX_SCORE = 5
    attr_accessor :name, :score

    def initialize(n, s)
        self.name = n
        self.score = s*MAX_SCORE
    end
    
end

player_1 = Gamy.new("Ase", 5)
 puts player_1.score
    
