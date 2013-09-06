require 'airport'

describe Airport do 
  let(:airport) {Airport.new 5}

  it 'has a maximum capacity' do 
    expect(airport.max_capacity).to eq 5   
  end

  it 'has a collection of planes' do 
    expect(airport).to have_planes
  end

  it 'can know the weather' do 
    weather = double :weather  
    expect(weather).to receive(:state)

    airport.current weather  
  end

end