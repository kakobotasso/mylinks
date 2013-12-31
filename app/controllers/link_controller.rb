class LinkController < ApplicationController
	before_filter :require_logged_user

	def new
		@link = Link.new
		@categories = Category.where(user_id: session[:user_id]).order(:name)
	end

	def create
		@link = Link.new(params[:link])
		@categories = Category.where(user_id: session[:user_id]).order(:name)
		@link.user_id = session[:user_id]

		if @link.save
			redirect_to dashboard_path
		else
			render action: "new"
		end
	end

	def edit
		@link = Link.find(params[:id])
	end

end