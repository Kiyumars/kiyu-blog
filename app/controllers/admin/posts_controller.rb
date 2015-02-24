class Admin::PostsController < ApplicationController
	def home
	end

	def index
		@posts = Post.all
	end


	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(safe_post_params)
			flash.now[:success] = "Post was updated"
			redirect_to edit_admin_post_path(params[:id])
		else
			flash.now[:danger] = "Post update was not valid"
			render 'edit'
		end
	end

	def destroy

	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(safe_post_params)
		if @post.save
			flash.now[:success] = "Post was created"
			redirect_to edit_admin_post_path(@post.id)
		else
			flash.now[:danger] = "Something was left out"
			render 'create'
		end
	end

	def save
	end

	def show
		@post = Post.find(params[:id])
	end

	private
		def safe_post_params
			params.require(:post).permit(:title, :content, :publish)
		end
end
