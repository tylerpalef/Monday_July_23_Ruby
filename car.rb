class Car

  @@default_colour = 'brown'
# Creating an class variable with the @@

  def initialize(owner)
  @owner = owner
  @colour = @@default_colour
  end

  def self.default_colour=(new_default_colour)
  @@default_colour = new_default_colour
  # Setting class Method with the def self.
  end

  def colour=(colour)
  @colour = colour
  end

end

# Car.default_colour = 'blue'
# That is a Class 
