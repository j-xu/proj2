class VisitorsController < ApplicationController

	def index
		@post = Post.order(created_at: :desc)
	end
end
