class PassengerMailer < ApplicationMailer

	default from: 'notifications@odin_flight_booker.com'

	def thankyou_email(passenger)
		@passenger = passenger 
		mail(to: @passenger.email, subject: 'Thank you')
	end

end
