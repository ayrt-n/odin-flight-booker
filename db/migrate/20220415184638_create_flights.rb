class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :departure
      t.references :destination
      t.datetime :start_time
      t.integer :duration

      t.timestamps
    end
  end
end
