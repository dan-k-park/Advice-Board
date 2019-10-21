class CategoriesController < ApplicationController
  # before_action :require_login

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  # def require_login
  #   return head(:forbidden) unless session.include? :user_id
  # end

end