class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :url
      t.string :image_url
      t.string :zip
      t.string :body
      t.string :category
      t.integer :votes_count

      t.timestamps null: false
    end
  end
end
