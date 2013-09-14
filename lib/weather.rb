class Weather
   
   def initialize(airport_weather_states)
     @states = airport_weather
   end

   def has_state?
     @state.any?
   end

   def set state
     @state = state
   end

   def state
     @states.sample
   end
end