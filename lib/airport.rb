class Airport 
  
  def initialize(max_capacity)
    @max_capacity = max_capacity
    @planes = [1234, 4321]
  end

  def max_capacity
    @max_capacity
  end

  def has_planes?
  	!@planes.empty?
  end

  def current(weather)
  	weather.state
  end

end