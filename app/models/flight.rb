class Flight < ApplicationRecord

	belongs_to :from_airport, :class_name => "Airport"
	belongs_to :to_airport, :class_name => "Airport"
	#belongs_to :booking
	has_many :bookings
	
	validates :departure_date, presence:true
	
	def self.search(params)
		date = params[:date]
		#d = date[:day]+"-"+date[:month]+"-"+date[:year]
		results = Flight.where(from_airport_id: params[:from_airport_id],
					 to_airport_id: params[:to_airport_id]).select{ |f| f.departure_date.month.to_s == date[:month] && f.departure_date.year.to_s == date[:year]}

	end

	def self.get_departure_dates
		departure_dates = Flight.find_by_sql("select distinct departure_date from flights where departure_date is not null order by departure_date desc")
	end

	def event_date_formatted
		departure_date.strftime("%m/%d/%y")
	end

end
