class MainController < ApplicationController
   # before_filter :authenticate,  :only => :admin
  def index
    @home_flag='1';
    if params[:category_id] != nil 
       @category_flag = '1'
  	   @blogs= Blog.includes(:category).paginate page: params[:page], order: 'created_at desc', per_page: 5, 
  	  :conditions => ["category_id = ?", "#{params[:category_id]}" ]
	  end
	 
    if params[:category_id] == nil 
	     @blogs= Blog.includes(:category).paginate page: params[:page], order: 'created_at desc', per_page: 5
        
    end

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end
  def admin
  	session[:user_id] = "guhhjj"
  	render "admin/blogs/index"
  end
	
end