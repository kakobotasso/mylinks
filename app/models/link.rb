class Link < ActiveRecord::Base
  attr_accessible :category, :link, :name, :user_id

  validates_presence_of :name, :category, :link
end
