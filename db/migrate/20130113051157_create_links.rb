class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :link
      t.integer :category
      t.integer :user_id

      t.timestamps
    end
  end
end
