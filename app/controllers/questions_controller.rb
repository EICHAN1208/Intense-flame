class QuestionsController < ApplicationController
  def index
    @questions = Question.order("RAND()").limit(5)
  end

  # def new
  #   @question = Question.new
  #   @question.answers.build
  # end
  #
  # def create
  #   question = Question.new(question_params)
  #   question.save
  #   # 親要素を保存かけてあげることで自動で子要素も保存されます！
  # end
  #
  # private
  #
  # def question_params
  #   params.require(:user).permit(:question, answers_attributes: [:answer])
  #   # 子要素のstrong parameterを書くことで、自動で子要素に親要素のidもふられます。この場合だと、answersテーブルにあるquestion_idにもきちんとこの時作成される親要素のidがふられる。
  # end

end
