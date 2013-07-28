class CommentsController < ApplicationController

	def create
		@blog = Blog.find(params[:blog_id])
		@comment = @blog.comments.create(params[:comment])
		redirect_to blog_path(@blog)
	end
	def destroy
		@blog = Blog.find(params[:blog_id])
		@comment = @blog.comments.find(params[:id])
		@comment.destroy
		redirect_to blog_path(@blog)
	end

	def index
		@blog = Blog.find(params[:blog_id])
	end
end
