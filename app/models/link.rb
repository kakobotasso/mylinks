class Link < ActiveRecord::Base
  attr_accessible :category, :link, :name, :user_id
end
