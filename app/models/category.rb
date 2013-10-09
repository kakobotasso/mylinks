class Category < ActiveRecord::Base
	attr_accessible :name, :slug, :user_id, :description
	validates_presence_of :name, :slug, :user_id
	validates_uniqueness_of :slug, scope: :user_id
end