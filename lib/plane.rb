class Plane
	def take_off_from airport
    airport.release_plane 
	end

	def land_at airport
    airport.accept_plane
	end
end