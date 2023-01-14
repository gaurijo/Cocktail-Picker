class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    new_user = User.create(user_params)
    flash[:success] = "Welcome, #{new_user.username}!"
    redirect_to root_path
    # user = user_params 
    # user[:username] = user[:username].downcase
    # new_user = User.create(user)
    # if new_user.save
    #   redirect_to root_path
    # else
    #   flash[:error] = "Try again."
    # end
  end

  def login
    user = User.find_by(username: params[:username])
    if user
      flash[:success] = "Welcome, #{user.username}!"
      redirect_to root_path
    else 
      flash[:error] = "Try again"
    end
  end

  private 
  def user_params 
    params.require(:user).permit(:username, :password)
  end
end