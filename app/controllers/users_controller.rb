class UsersController < ApplicationRecord
  def show
    @user = User.find(params[:id])
  end
end