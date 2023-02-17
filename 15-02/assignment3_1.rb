class Lasagna
	EXPECTED_TIME_IN_OVEN = 40
	TIME_TAKEN_BY_LAYER = 2
	
	def remaining_time_in_oven(actual_minutes)
		EXPECTED_TIME_IN_OVEN - actual_minutes 
	end
	
	def preparation_time_in_minutes(no_of_layers)
		no_of_layers * TIME_TAKEN_BY_LAYER
	end
	
	def total_time_in_minutes(no_of_layers,actual_minutes_in_oven)
		p remaining_time_in_oven( actual_minutes_in_oven) + preparation_time_in_minutes(no_of_layers) 
	end

end

lasagna= Lasagna.new
lasagna.total_time_in_minutes(3,20)
