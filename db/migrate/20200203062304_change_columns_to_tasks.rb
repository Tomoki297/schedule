class ChangeColumnsToTasks < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :limit_date, :datetime
    add_column :tasks, :deleted_at, :datetime
  end
end
