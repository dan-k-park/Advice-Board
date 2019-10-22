class CategoriesController < ApplicationController
  before_action :redirect_user

  def index
    @user = User.find(session[:user_id])
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end