class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
 
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to categories_path
    else
      flash[:message] = "Sorry, that username is taken. Please choose a different username."
      render :new
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name)
  end

end