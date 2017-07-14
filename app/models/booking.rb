class Booking < ApplicationRecord
	has_many :passengers, inverse_of: :booking
	accepts_nested_attributes_for :passengers

	has_one :flight
end


