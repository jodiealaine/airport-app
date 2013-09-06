require 'plane'

describe Plane do 
	let(:plane) {Plane.new}
  
	context 'given the weather is not stormy at the airport' do
		context 'and there is no bomb scare' do
		  it 'can take off from an airport' do 
		    airport = double :airport
		    expect(airport).to receive(:release_plane)

		    plane.take_off_from airport
		  end

		  it 'can land at a station if station is not full' do 
	      airport = double :airport
	      expect(airport).to receive(:accept_plane)

	      plane.land_at airport
		  end

		  it 'cannot land at station if station is full' do 
		    airport = double :airport, accept_plane: false
		    expect(plane.land_at(airport)).to eq false
		  end
	  
	  end   
  
	  context 'and there is a bomb scare' do
	    
	    it 'cannot take off from airport' do 
	      airport = double :airport, release_plane: false
	      expect(plane.take_off_from(airport)).to eq false
	    end

		  it 'cannot land at airport' do 
		    airport = double :airport, accept_plane: true
		    expect(plane.land_at(airport)).to eq true
		  end
	  end
	end

	it 'cannot land if the weather is stormy' do 
  	airport = double :airport, accept_plane: false
  	expect(plane.land_at(airport)).to eq false
  end

end