class AddBookingToFlights < ActiveRecord::Migration[5.0]
  def change
    add_reference :flights, :booking, foreign_key: true, index: true
  end
end
