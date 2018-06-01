class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      #redirect_to show_path
      redirect_to root_url
    else
      render 'edit'
    end
  end
  
  def user_params
      params.require(:user).permit({images: []}, :remove_images)
  end
  
  def show
  end
  
end
