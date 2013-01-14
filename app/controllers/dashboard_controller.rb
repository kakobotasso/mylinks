class DashboardController < ApplicationController
	before_filter :require_logged_user
	
	def index
		@facebook = Link.find_all_by_category(0)
		@gag = Link.find_all_by_category(1)
		@article = Link.find_all_by_category(2)
	end
end