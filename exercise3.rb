class System

 attr_reader :bodies
 attr_accessor :name, :mass

 @bodies = []

  def initialize(name, mass)
    @mass = mass
    @name = name
  end

  def add(body)
    @bodies << body
  end

  def total_mass
    sum = 0
    @bodies.each do |body|
    sum += body.mass
    end
    sum
  end

end

class Body

  attr_reader :name, :mass

  def initialize(name, mass)
    @mass = mass
    @name = name

  end

end

class Planet < Body

  def initialize(day, year)
    @day = day
    @year = year
  end

end

class Star < Body

  def initialize(type)
    @type = type
  end

end

class Moon < Body

  def initialize(month, planet)
    @month = month
    @planet = planet
  end

end



earth = System.new("earth", "100")
puts earth.mass
puts earth.name

mars = Body.new("mars", "150")
puts mars.name
puts mars.mass

moon = Moon.new("moon",43143)
planet = Planet.new("planet", 3213214)
star = Star.new("star", 232)
