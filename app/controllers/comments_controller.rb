class CommentsController < ApplicationRecord
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
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