class Weather
   
   def initialize state=nil
     @state = state
   end

   def has_state?
     !@state.nil?
   end

   def set state
     @state = state
   end

   def state 
     @state
   end
end