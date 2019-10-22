class AuthController < ApplicationController
  def signin
  end

  def verify
    @user = User.find_by(name: params[:auth][:name])
    if @user
      session[:user_id] = @user.id
      redirect_to categories_path
    else
      flash[:message] = "Incorrect info, please try again"
      render :signin
    end
  end

  def logout
    session.clear
    redirect_to login_page_path
  end

end