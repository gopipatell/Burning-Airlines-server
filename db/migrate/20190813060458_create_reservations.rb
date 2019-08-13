class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :rows
      t.integer :columns
      t.integer :user_id
      t.integer :flight_id

      t.timestamps
    end
  end
end
