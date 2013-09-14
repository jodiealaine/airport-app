require 'weather'

class Airport 

  def initialize(max_capacity, collection_of_planes)
  	@weather = Weather.new(['sunny', 'stormy'])
    @max_capacity = max_capacity
    @planes = collection_of_planes
    @bomb_scare = false
  end

  def bomb_scare!
    @bomb_scare = true 
  end

  def call_off_bomb_scare!
    @bomb_scare = false
  end
  
  def bomb_scare?
    @bomb_scare
  end

  def max_capacity
    @max_capacity
  end

  def has_planes?
  	!@planes.empty?
  end

  def number_of_planes
    @planes.length
  end

  def current_weather
  	@weather.state
  end

  def has_capacity?
    @planes.length < @max_capacity
  end
  
  def release_plane?
    (current_weather == 'sunny') && bomb_scare?
  end

  def accept_plane?
  	(current_weather == 'sunny') && bomb_scare? && has_capacity?
  end

  def release_plane!
  	raise 'Cannot release plane' if !release_plane?
  	@planes.pop   
  end

  def accept_plane!(plane)
  	raise 'Cannot accept plane' if !accept_plane?
  	@planes << @plane 
  end

end