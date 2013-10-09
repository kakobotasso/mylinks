class DashboardController < ApplicationController
	before_filter :require_logged_user
	
	def index
		@categories = Category.all
	end
end