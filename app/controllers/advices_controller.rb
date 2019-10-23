class AdvicesController < ApplicationController
  def index
    @advices = Advice.all
  end

  def show
    @advice = Advice.find(params[:id])
    session[:advice_id] = params[:id]
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
  end

  def update
    @advice = Advice.find(params[:id])
    if @advice.update
      redirect_to advice_path(@advice)
    else
      render :edit
    end
  end

  def destroy
    @advice = Advice.find_by_id(session[:advice_id])
    byebug
    @advice.destroy
    session[:advice_id].clear
    @user = User.find(session[:user_id])
    redirect_to user_path(@user)
  end

  private
  # , categories_attributes: [:name]
  def advice_params
    params.require(:advice).permit(:content, :user_id, category_ids: [])
  end

end