class BookingsController < ApplicationController
  def new
  	#Display information in rendered form
  	@flight = Flight.find_by(id: params[:flight_id])
  	#create a booking
  	@booking = Booking.new
  	params[:num_tickets].to_i.times {@booking.passengers.build}
  end

  def create
     #create and save booking, build_flight, passenegers.build
     @booking = Booking.new(booking_params)
  	
  	 if @booking.save
  	 	@booking.flight = Flight.find_by(id: params[:booking][:flight_id])
  	 	flash[:success] = "Successfully booked flight."
  	 	redirect_to @booking
  	 else
        flash.now[:danger] = "An error has occurred. Please try again."
        render 'new'
  	 end
  	 
  end

  def show
  	@booking = Booking.find_by(id: params[:id])
  	
  end

  private 

  def booking_params
  	params.require(:booking).permit(passengers_attributes: [:name, :email])
  end
end
