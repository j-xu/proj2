class VisitorsController < ApplicationController

	def index
		@post = Post.order(created_at: :desc).page(params[:page]).per(9)
	end
end
