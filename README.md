Spec

- Our application has one or more airports
- Each airport contains a collection of planes
- Each airport has a 'weather' object tied to it
- An airport's weather can have two states: sunny or stormy
- The weather should randomly be sunny or stormy, with a 50/50 chance
- A plane can take off from an airport, but only if the weather is not stormy. Once a plane takes off, it's no longer contained within the airport
- A plane can land at an airport, but only if the weather is not stormy. Once a plane lands, it should be contained withing the airport
- An airport has a max capacity, which we decide when we create the airport
- A plane can't land at a full airport
- An airport can have a bomb scare - in which case no planes can take off or land
- A bomb scare can be called off, and the airport goes back to normal

Airport 

planes
bomb_scare?
weather
capacity
full?
accept plane
release plane
raise_bomb_scare
remove_bomb_scare


Weather

state
generate_state

Plane

can_take_off
take_off
can_land_at airport
land_at airport