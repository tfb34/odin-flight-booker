# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#name of airport is not necessary

airport_codes = %w[SFO DEN LAX AMS ORD NYC EWR MEX]

airport_codes.each do |code|
	Airport.create!(code: code)
end
 
 #creating flight objects
(Airport.count-1).times do |x|
	(x+1).upto(Airport.count-1) do |i|
		4.times do 
			from = Airport.all[x]
			to = Airport.all[i]
			depart = Faker::Time.forward(100)
			Flight.create!(departure_date: depart,from_airport_id: from.id, to_airport_id: to.id)
		end
	end
end

