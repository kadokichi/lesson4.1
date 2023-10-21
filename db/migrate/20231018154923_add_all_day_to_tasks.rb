class AddAllDayToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :all_day, :boolean
  end
end
