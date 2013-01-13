class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :link
      t.integer :category

      t.timestamps
    end
  end
end
