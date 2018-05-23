class SessionsController < ApplicationController
 def create
   user = User.from_omniauth(request.env['omniauth.auth'])
   session[:user_id] = user.id
   redirect_to root_url
   flash.now[:success] = "Welcome to the Sample App!"
 end
 
   def destroy
     log_out
     redirect_to root_url
   end
end
