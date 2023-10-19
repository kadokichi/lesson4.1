class AddEndDayToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :end_day, :date
  end
end
