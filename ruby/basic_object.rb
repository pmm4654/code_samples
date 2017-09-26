class Dog 
  attr_accessor :pet_name, :favorite_treat
  def initialize(name=nil, favorite_treat=nil)
    @pet_name = name
    @favorite_treat = favorite_treat
  end

  def self.number_of_legs
    4
  end

  def pet_name
    @pet_name.to_s.capitalize
  end

end

sparky = Dog.new("sparky")
puts "Your dog's name is #{sparky.pet_name}"
# the name method capitalizes the name of the dog.

sparky.favorite_treat = "Greenies"
puts sparky.favorite_treat

# the attr_accessor class method builds 2 method for each symbol you pass it
# name and name=, favorite_treat and favorite_treat=
# These are intance methods.  They need an instance of the object before they can be called
# 
# You can overwrite the method if you need to do anything special with it, like name above.
# 
# Class methods are defined by def self.method_name.  These don't require an instance of the class.

puts "Dogs have #{Dog.number_of_legs}"
