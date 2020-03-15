class PastquestionsController < ApplicationController

    before_action :move_to_index, except: [:index, :show]

    def index
      @pastquestions = Pastquestion.includes(:user).order("created_at DESC").page(params[:page]).per(5)
    end

    def new
      @pastquestion = Pastquestion.new
    end

    def create
      Pastquestion.create(prefecture: pastquestion_params[:prefecture], p_question: pastquestion_params[:p_question], user_id: current_user.id)
    end

    def destroy
      pastquestion = Pastquestion.find(params[:id])
        if pastquestion.user_id == current_user.id
          pastquestion.destroy
        end
    end

    def edit
      @pastquestion = Pastquestion.find(params[:id])
    end

    def update
      pastquestion = Pastquestion.find(params[:id])
        if pastquestion.user_id == current_user.id
          pastquestion.update(pastquestion_params)
        end
    end

    def show
      @pastquestion = Pastquestion.find(params[:id])
      @comments = @pastquestion.comments.includes(:user)
    end

    private
    def pastquestion_params
      params.permit(:prefecture, :p_question)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

end
