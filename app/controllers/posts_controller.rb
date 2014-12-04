class PostsController < ApplicationController
	def edit
		@post = Post.find params[:id]
	end

	def update
		@post = Post.find params[:id]
		if @post.update post_params
			flash[:success] = 'Updated!'
			redirect_to @post.user
		else
			render 'edit'
		end
	end

	def new
		@user = User.find params[:user_id]
		@post = @user.posts.build
	end

	def create
		@post = Post.new post_params
		if @post.save
			flash[:success] = 'Created!'
			redirect_to @post.user
		else
			render 'new'
		end
	end

	def show
		@post = Post.find params[:id]
		if @post.destroy
			flash[:success] = 'Deleted!'
			redirect_to @post.user
		else
			render 'destroy'
		end
	end

	private

	def post_params
		params.require(:post).permit(:user_id, :body)
	end

end
