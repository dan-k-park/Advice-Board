class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @user = User.find(session[:user_id])
    @advice = Advice.find(params[:advice_id])
  end

  def create
    @advice = Advice.find(params[:advice].to_i)
    @user = User.find(session[:user_id])
    @comment = Comment.new(comment_params)
    @comment.advice_id = @advice.id
    @comment.user_id = @user.id
    if @comment.save
      redirect_to advice_path(@advice)
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :advice_id, :user_id)
  end

end