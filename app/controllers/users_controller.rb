class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save 
      flash[:success] = "Welcome, #{@user.username}!"
      redirect_to root_path
    else 
      render :new 
    end
  end

  # def login
  #   user = User.find_by(username: params[:username])
  #   if user
  #     flash[:success] = "Welcome, #{user.username}!"
  #     redirect_to root_path
  #   else 
  #     flash[:error] = "Try again"
  #   end
  # end

  private 
  def user_params 
    params.require(:user).permit(:username, :password)
  end
end