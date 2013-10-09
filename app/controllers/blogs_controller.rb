class BlogsController < ApplicationController
 

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blog = Blog.find(params[:id])
    @comments = @blog.comments.paginate page: params[:page], order:' created_at desc', per_page: 5
    respond_to do |format|
      format.html # show.html.erb
      format.js
    end
  end



end
