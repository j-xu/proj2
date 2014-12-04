class CollectionsController < ApplicationController
	def new
		@user = User.find params[:user_id]
		@collection = @user.collections.build
	end

	def create
		@collection = Collection.new collection_params
		if @collection.save
			flash[:success] = 'Created!'
			redirect_to @collection.user
		else
			render 'new'
		end
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

	def edit
		@collection = Collection.find params[:id]
	end

	def update
		@collection = Collection.find params[:id]
		if @collection.update collection_params
			flash[:success] = 'Updated!'
			redirect_to @collection.user
		else
			render 'edit'
		end
	end

	private

	def collection_params
		params.require(:collection).permit(:user_id, :name)
	end

end
