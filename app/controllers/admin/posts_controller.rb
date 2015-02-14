class Admin::PostsController < ApplicationController
	def home
	end

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit

	end

	def update

	end

	def destroy

	end

	def new
		@post = Post.new
	end

	def create
	end
end
