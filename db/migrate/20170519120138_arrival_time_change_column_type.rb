class ArrivalTimeChangeColumnType < ActiveRecord::Migration[5.0]
  def up
    change_column :lines, :arrival_time, :datetime
  end

  def down
    change_column :lines, :arrival_time, :time
  end
end
