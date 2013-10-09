class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout  :user_layout
  def user_layout  
    admin_id = session[:user_id] 
    puts "******************************#{admin_id}"
    if admin_id!=nil  
      "admin"  
    else  
      "application"  
    end  
  end  
  def method_missing(name, *args)
      render(inline: %{
        <h2>Unknown action: #{name}</h2>
        Here are the request parameters:<br/>
      <%= debug(params) %> })
  end
  protected

    def authenticate
       authenticate_or_request_with_http_basic do |user_name, password|
           user_name == "guhhjj" && password == "123"
       end
    end

end
