class AddColumnsToFlights < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :from_airport_id, :integer
    add_column :flights, :to_airport_id, :integer
    
    add_foreign_key :flights, :airports, column: :from_airport_id
    add_foreign_key :flights, :airports, column: :to_airport_id
    
    add_index :flights, :from_airport_id
    add_index :flights, :to_airport_id
  end
end
