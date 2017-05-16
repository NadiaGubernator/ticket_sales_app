class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :line_id
      t.integer :seat
      t.integer :user_id
      t.boolean :bought

      t.timestamps
    end
  end
end
