class CommentsController < ApplicationController
	before_filter :find_blog

	def create
		#params[:comment][:blog_id] = params[:blog_id]
		@comment = @blog.comments.create(params[:comment])
		respond_to do |format|
			format.html { redirect_to(@comment) }
			format.js
		end
	end
	def destroy
		@comment = @blog.comments.find(params[:id])
		@comment.destroy
		redirect_to blog_path(@blog)
	end

	def index
		@blog 
	end

	protected

	def find_blog
	  	@blog = Blog.find( params[:blog_id] )
	end

end
