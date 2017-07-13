class FlightsController < ApplicationController
  def index
  	@airports_array = Airport.all.map{ |a| [a.code, a.id] }
  	
  	@results = Flight.search(params)

  	
  end

end
