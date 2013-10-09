class DashboardController < ApplicationController
	before_filter :require_logged_user
	
	def index
		@categories = Category.where(user_id: session[:user_id])
	end
end