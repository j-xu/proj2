class CollectionsController < ApplicationController
	def new
		@user = User.find params[:user_id]
		@collection = @user.collections.build
	end

	def show
		@collection = Collection.find params[:collection_id]
		@collections = @collection.posts.order(:created_at).page(params[:page]).per(2)
		@user = User.find params[:user_id]
	end

	def index
		@user = User.find params[:user_id]
		@collection = @user.collections
		@post = Post.find params[:post_id]
	end
end
