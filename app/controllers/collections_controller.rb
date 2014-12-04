class CollectionsController < ApplicationController
	def new
		@user = User.find params[:user_id]
		@collections = @user.posts.build
	end

	def show
		@collection = Collection.find params[:collection_id]
	end

end
