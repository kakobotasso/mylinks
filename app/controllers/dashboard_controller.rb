class DashboardController < ApplicationController
	before_filter :require_logged_user
	
	def index
		@facebook = Link.find_all_by_user_id_and_category(session[:user_id], 0)
		@gag = Link.find_all_by_user_id_and_category(session[:user_id], 1)
		@article = Link.find_all_by_user_id_and_category(session[:user_id], 2)
		@technology = Link.find_all_by_user_id_and_category(session[:user_id], 3)
		@other = Link.find_all_by_user_id_and_category(session[:user_id], 4)
	end
end