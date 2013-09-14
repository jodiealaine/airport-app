require 'airport'

describe Airport do 
  let(:airport) {Airport.new 5}

  it 'has a maximum capacity' do 
    expect(airport.max_capacity).to eq 5   
  end

  it 'has a collection of planes' do 
    expect(airport).to have_planes
  end

  it 'has an initial collection of planes equal to half the max capacity' do 
  	airport = Airport.new 10
  	expect(airport.number_of_planes).to eq 5
  end

  it 'has no capacity when it is full' do
    airport = Airport.new 0
    expect(airport).to_not have_capacity
  end

  it 'has capacity when it is not full' do 
  	airport = Airport.new 3
  	expect(airport).to have_capacity
  end

  it 'has a weather object tied up with it' do 
  	expect(airport.state).to eq nil
  end

  it 'can set the weather state for itself' do
    airport.set_weather!
    expect(airport.state).to_not eq nil
  end 

  it 'can check the current weather' do 
  	expect(airport.current_weather).to_not eq nil
  end

  it 'weather can have two states: sunny or stormy' do 
  	expect(airport.weather_state_options).to eq ['sunny', 'stormy']
  end

  it 'can have a bomb scare' do 
    airport.bomb_scare!
    expect(airport.bomb_scare?).to eq true
  end

  it 'can call off a bomb scare' do 
    airport.call_off_bomb_scare!
    expect(airport.bomb_scare?).to eq false
  end



  context 'Given there are no bomb scares and the weather is sunny' 
  
	  it 'can accept a plane if the airport is not full' 

	  it 'cannot accept a plane if the airport is full'

	  it 'can release a plane if the airport'
	  
	context 'Given the airport is not full and the weather is sunny'
	  it 'can accept a plane if there is no bomb scare'

	  it 'cannot accept a plane if there is a bomb scare'

	  it 'can release a plane if the there is no bomb scare'

	  it 'cannot release a plane if there is a bomb scare'

  context 'Given there are no bomb scares an the airport is not full'
	  it 'can accept a plane if the weather is sunny' do 
      plane = double :plane
      airport.accept_plane!(plane)
      expect(airport.number_of_planes).to eq 3
    end
	  it 'cannot accept a plane if the weather is stormy'

	  it 'can release a plane if the weather is sunny' do
	    airport.release_plane!
	    expect(airport.number_of_planes).to eq 1
	  end

	  it 'cannot release a plane if the weather is stormy'
	
	context 'Given a bomb scare' do   
    it 'cannot let plane take off' do 
      expect{airport.release_plane!}.to raise_error 'Cannot release the plane'
  end

	  it 'cannot let plane land at airport' do 
	    plane = double :plane
	    airport.bomb_scare!
	    expect{airport.accept_plane!(plane)}.to raise_error 'Cannot accept the plane'
	  end
  end
  
  context 'Given a bomb scare is called off' 
	  it 'goes back to normal' 

	  	
end