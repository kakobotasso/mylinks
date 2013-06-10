class LinkController < ApplicationController
	before_filter :require_logged_user

	helper_method :category

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link])
		@link.user_id = session[:user_id]

		if @link.save
			redirect_to dashboard_path
		else
			render action: "new"
		end
	end

	private
	def category
		@category = [
			["Facebook", 0],
			["9GAG", 1],
			["Article", 2],
			["Technology", 3],
			["Other", 4],
			["Jiu-Jitsu", 5]
		]
	end
end