class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.text :note
      
      t.timestamps
    end
  end
end
