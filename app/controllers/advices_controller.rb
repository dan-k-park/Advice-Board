class AdvicesController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @advices = Advice.all
  end

  def show
    @advice = Advice.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def new
    @advice = Advice.new
  end

  def create
    @advice = Advice.new(advice_params)
    @advice.user_id = session[:user_id]
    if @advice.save
      redirect_to advice_path(@advice)
    else
      render :new
    end
  end

  def edit
    @advice = Advice.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def update
    @advice = Advice.find(params[:id]) 
    if @advice.update(advice_params)
      redirect_to advice_path(@advice)
    else
      render :edit
    end
  end

  def destroy
    @advice = Advice.find(params[:id])
    @advice.destroy
    @user = User.find(session[:user_id])
    redirect_to user_path(@user)
  end

  private
  # , categories_attributes: [:name]
  def advice_params
    params.require(:advice).permit(:content, :user_id, category_ids: [])
  end

end