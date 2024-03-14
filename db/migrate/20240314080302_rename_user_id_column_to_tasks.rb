class RenameUserIdColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :User_id, :user_id
  end
end
