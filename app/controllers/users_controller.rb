class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = current_user.nickname
    @pastquestions = user.pastquestions.page(params[:page]).per(5).order("created_at DESC")
    # @pastquestions = current_user.pastquestions.order("created_at DESC").page(params[:page]).per(5)
  end
end
