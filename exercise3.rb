class System

 attr_reader :bodies

  def initialize
    @bodies   = []

  end

  def add(body)
    body = System.new
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
