class PostsController < ApplicationController
	def home
	end

	def index
		@posts = Post.where(publish: true)
	end

	def show
		@post = Post.find(params[:id])
	end
end
