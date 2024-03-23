class AddGenreIdToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :genre_id, :integer
  end
end
