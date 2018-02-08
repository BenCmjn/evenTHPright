class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # log_in @user
      # redirect_to secret_path
      flash.now[:success] = 'Welcome! Ton compte est créé'
    else
      render 'new'
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def index
  	@users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end


