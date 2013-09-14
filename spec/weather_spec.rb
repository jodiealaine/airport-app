require 'weather'

describe Weather do 
  let(:weather) {Weather.new}
  it 'has no state' do 
    expect(weather).not_to have_state
  end
  
  it 'state can be set' do 
    weather.set 'stormy'
    expect(weather.state).to eq 'stormy'
  end

  it 'has a state' do 
  	weather = Weather.new 'stormy'
    expect(weather).to have_state
  end


end