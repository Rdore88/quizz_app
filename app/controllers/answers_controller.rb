class AnswersController < ApplicationController
  before_action :find_question
  before_action :find_answer, only: [:edit, :update, :destroy]
  before_action :find_quiz

  def new
    @answer = @question.answers.build
    @question
    @quiz
  end

  def create
    @answer = @question.answers.build(answer_params)
    if @answer.save
      redirect_to edit_quiz_path(@quiz)
    else
      render "new"
    end
  end

  def edit
    @answer
    @question
    @quiz
  end

  def update
    if @answer.update(answer_params)
      redirect_to edit_quiz_path(@quiz)
    else
      render "edit"
    end
  end

  def destroy
    @answer.delete
    redirect_to edit_quiz_path(@quiz)
  end

  private

  def find_answer
    @answer = Answer.find(params[:id])
  end

  def find_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:answer, :correct)
  end
end
