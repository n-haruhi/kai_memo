class RemoveGenreIdFromTask < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :genre_id, :integer
  end
end
