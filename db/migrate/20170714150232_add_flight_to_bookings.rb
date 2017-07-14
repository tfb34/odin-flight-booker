class AddFlightToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :flight, foreign_key: true, index: true
  end
end
