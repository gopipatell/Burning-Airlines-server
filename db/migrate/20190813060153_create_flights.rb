class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :name
      t.string :origin
      t.string :destination
      t.date :date
      t.integer :airplane_id
      t.integer :available_seats

      t.timestamps
    end
  end
end
