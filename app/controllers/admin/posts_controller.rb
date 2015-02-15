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
		if @post.update_attributes!(safe_post_params)
			flash[:success].now = "Post was updated"
			redirect_to edit_admin_post_path(params[:id])
		else
			render 'edit'
		end
	end

	def destroy

	end

	def new
		@post = Post.new
	end

	def create
		@post.new(safe_post_params)
		if @post.save
			flash[:success].now = "Post was created"
			redirect_to edit_admin_post_path(params[:id])
		else
			flash[:danger].now = "Something was left out"
			render 'create'
		end
	end

	private
		def safe_post_params
			params.require(:post).require(:title, :content)
		end
end
