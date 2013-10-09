class CategoryController < ApplicationController
	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params[:category])
		@category.slug = @category.name.parameterize
		@category.user_id = session[:user_id]

		if @category.save
			redirect_to dashboard_path
		else
			render action: "new"
		end
	end
end