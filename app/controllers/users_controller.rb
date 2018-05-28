class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to root_url
    else
      render 'edit'
    end
  end
  
  def user_params
      params.require(:user).permit(:name, :provider, :image)
  end
end
