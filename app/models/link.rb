class Link < ActiveRecord::Base
	belongs_to :category
  attr_accessible :category_id, :link, :name, :user_id

  validates_presence_of :name, :category, :link, :user_id
  validates_uniqueness_of :link, scope: :user_id
end
