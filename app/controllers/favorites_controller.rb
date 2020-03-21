class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(pastquestion_id: params[:pastquestion_id])
    favorite.save
    redirect_to pastquestions_path
  end

  def destroy
    favorite = Favorite.find_by(pastquestion_id: params[:pastquestion_id], user_id: current_user.id)
    favorite.destroy
    redirect_to pastquestions_path
  end
end
