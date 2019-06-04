class AddVideoPathToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :video_path, :text, after: :note
  end
end
