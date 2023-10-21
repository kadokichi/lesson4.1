class AddStartDayToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :start_day, :date
  end
end
