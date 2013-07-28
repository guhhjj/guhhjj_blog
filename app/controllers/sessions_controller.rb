class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
  	
  end

  def destroy
  	 session[:user_id] = nil
     redirect_to home_path, notice: "Logged out"
  end
end