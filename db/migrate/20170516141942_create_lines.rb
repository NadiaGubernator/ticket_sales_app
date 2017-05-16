class CreateLines < ActiveRecord::Migration[5.0]
  def change
    create_table :lines do |t|
      t.integer :seats_total
      t.string :departure_city
      t.datetime :departure_time
      t.string :arrival_city
      t.time :arrival_time

      t.timestamps
    end
  end
end
