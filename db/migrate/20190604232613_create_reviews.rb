class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.text :note

      t.timestamps
    end
  end
end
