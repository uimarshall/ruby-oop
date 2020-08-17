=begin
In OOP, generally speaking, is to help us modularize our code.
We create classes in order to create objects off it.
Two things are very important in OOP:
=====================================
1. Class
2. Creating objects or instances from the Class
3. Inheritance: This involves inheriring some methods by a child class from the Parent class
4. Others include the initialization of class variables which all instances of the class must
have once they are instanciated.

INSTANCES OF A CLASS
============================================================================================
When defining a class, we typically focus on two things: states and behaviors. 
States track attributes for individual objects.The state are the pties or attr of the class 
Behaviors are what objects are capable of doing. Behaviours are the methods.
============================================================================================ 
Instance variables are scoped at the object (or instance) level, 
and are how objects keep track of their states.
E .g def initialize(name)
       @name = name
    end
'@name' - keeps track of the states of objects instancited from classes.    
We refer to the 'initialize method' as a 'constructor', because it gets triggered whenever we create a new object.
============================================================================================

Assumming you want to add some attributes to your instances in the future, you can use:
'attr-accessor:' to achieve this.You will be able to add features to your class on the fly programmatically.

What the 'class' helps us to do is to encapsulate a lot of functions and variables we will later
expose in other files/modules when the classes is imported.

SUMMARY
=======================================
Class is the grouping of code, you can define functions, declare variables and bundles it inside a
particular class e.g Person, Car, & User classes.
The class is a blue print with capabilities, the capabilities are the methods and properties.
It seats idle in a machine until an object or instance is created off it.  
Creating an instance is just like invoking or calling a function, in this case we call a class.


INHERITANCE
=======================================
Inheritance is the idea of having a 'child class' that inherits the properties of a 'Parent class'
e.g. We can have an Admin class that inherits the capabilities of a User class.
To enhance the capability of the parent class inside the child class we use:
'super' key word and define same function we want to enhance inside the child class

CONSTRUCTOR METHOD
=======================================================================================
 Remember that: "initialize" is the constructor method in Ruby
 "initialize" gets called every time we instantiate a new object via the "new" method.

=end

class Person
    attr_accessor :profession, :fav_color, :hobby
    #attr_accessor helps to automatically create these getter and setter methods for us.
    def initialize(fname, lname,age)
        @first_name=fname
        @last_name=lname
        @age=age
    end
    #  getter method
    def get_name
        puts @first_name
        
    end

    # setter method
    def set_name=(fname)
        @first_name=fname
        
    end
    def speaks
        puts "Hello! i am #{@first_name}. I am #{@age} years young"
    end        
    
end

# Class instances
person_1 = Person.new("Bola", "Jon", 12)
person_1.get_name
puts person_1.set_name="Rooney"
# puts person_1.speaks
# person_1.hobby="singing"
# person_1.profession="Doctor"
# puts "My hobby is #{person_1.hobby}" 
# puts "My profession is #{person_1.profession}"

# How To Get List Of Traits or Properties of a class
puts person_1.inspect 
# => <Person:0x00000000064bec58 @first_name="Bola", @last_name="Jon", @age=12, @hobby="singing", @profession="Doctor">

class Animal < Person
    def speaks
        super
        puts "I am not a human"
        
    end
    
end

animal_1= Animal.new('Monkey', 'Banana',10)
# puts animal_1.inspect
# puts animal_1.speaks
