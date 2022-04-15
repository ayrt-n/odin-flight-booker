class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :departure_id
      t.references :destination_id
      t.datetime :start_time
      t.integer :duration

      t.timestamps
    end
  end
end
