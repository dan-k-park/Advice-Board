class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    @comment.advice_id = session[:advice_id]
    if @comment.save
      session[:advice_id].clear
      redirect_to advice_path(@comment.advice)
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :advice_id, :user_id)
  end

end