class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], pastquestion_id: comment_params[:pastquestion_id], user_id: current_user.id)
    redirect_to "/pastquestions/#{@comment.pastquestion.id}"
  end

  private
  def comment_params
    params.permit(:text, :pastquestion_id)
  end
end
