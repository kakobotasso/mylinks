class DashboardController < ApplicationController
	before_filter :require_logged_user
	
	def index
		@facebook = Link.find_all_by_user_id_and_category(session[:user_id], 0).sort! { |a,b| b.id <=> a.id }
		@gag = Link.find_all_by_user_id_and_category(session[:user_id], 1).sort! { |a,b| b.id <=> a.id }
		@article = Link.find_all_by_user_id_and_category(session[:user_id], 2).sort! { |a,b| b.id <=> a.id }
		@technology = Link.find_all_by_user_id_and_category(session[:user_id], 3).sort! { |a,b| b.id <=> a.id }
		@other = Link.find_all_by_user_id_and_category(session[:user_id], 4).sort! { |a,b| b.id <=> a.id }
	end
end