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
		@user = User.find params[:user_id]
		@collection = Collection.find(params[:collection_id])
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


	def destroy
		@collection = Collection.find params[:id]
		@collection.posts.each do |post|
			post.destroy
		end
		@user = User.find @collection.user_id
		@collection.destroy
		flash[:success] = 'Deleted!'
		redirect_to @user
	end

	private

	def collection_params
		params.require(:collection).permit(:user_id, :name)
	end

end
