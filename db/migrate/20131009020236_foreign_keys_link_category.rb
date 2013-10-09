class ForeignKeysLinkCategory < ActiveRecord::Migration
  def change
  	rename_column :links, :category, :category_id
  end
end
