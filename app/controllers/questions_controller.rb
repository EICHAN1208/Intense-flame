class QuestionsController < ApplicationController
  def index
    @questions = Question.order("RAND()").limit(5)
    @answers = Answer.order("RAND()").limit(4)
  end
end
