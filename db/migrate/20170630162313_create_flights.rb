class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.datetime :departure_date
      t.time :duration

      t.timestamps
    end
  end
end
