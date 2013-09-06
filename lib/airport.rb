require 'weather'

class Airport < Weather

  def initialize(max_capacity)
  	super()
  	@state_options = ['sunny', 'stormy']
    @max_capacity = max_capacity
    @planes = []
    collection_of_new_planes
  end
  
  def weather_state_options
    @state_options
  end

  def max_capacity
    @max_capacity
  end

  def collection_of_new_planes
    (@max_capacity/2).times{ @planes << Plane.new}
  end

  def has_planes?
  	!@planes.empty?
  end

  def number_of_planes
    @planes.length
  end

  def current_weather
  	set_weather!
  end

  def set_weather!
    set(@state_options[rand(2)]) 
  end

  def has_capacity?
    @planes.length < @max_capacity
  end

end