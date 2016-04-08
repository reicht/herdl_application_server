class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :entry

      t.timestamps null: false
    end
  end
end
