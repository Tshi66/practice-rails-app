class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:show, :followings, :followers]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def followings
    @user = User.find(params[:id])
    @followings = @user.followings
    
  end
  
  def followers
    @user= User.find(params[:id])
    @followers = @user.followers
    
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
