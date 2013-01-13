class DashboardController < ApplicationController
	before_filter :require_logged_user
	
	def index
		@links = Link.all
	end
end