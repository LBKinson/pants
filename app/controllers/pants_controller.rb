class PantsController < ApplicationController

	def home
		#this is blank - nothin' fancy
	end

	def search
		query = params['query'].gsub(' ', '+')
		url = "http://api.openweathermap.org/data/2.5/weather?q=#{query},us"
		@response = HTTParty.get( url )

		@celsius = @response['main']['temp_min'] - 273.15
		@low = @celsius * 9/5 + 32

		if @low < 74
			@message = "PANTS"

		else
			@message = "NO PANTS"
			
		end
	end

end