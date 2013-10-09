class CreateCategories < ActiveRecord::Migration
  def change
  	create_table :categories do |t|
      t.string :name
      t.string :slug
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
