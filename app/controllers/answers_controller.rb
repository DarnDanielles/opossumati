require 'byebug'

class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?, except: [:create]


  # GET /answers
  # GET /answers.json
  def index
    @survey = Survey.find_by(id: params[:survey_id])
    @answers = @survey.answers.order(:question_id)
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @survey = Survey.find(answer_params[:id])
      # byebug

    if @survey.update(survey_params)
      redirect_to @survey, notice: 'Answers were successfully created.'
    else
      redirect_to :back, notice: 'Please answer all required questions!'
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    if @answer.update(answer_params)
      redirect_to @answer, notice: 'Answer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    redirect_to answers_url, notice: 'Answer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:survey).permit(:id,
        questions_attributes: [:id, :required,
          answers_attributes: [:question_id, :taker_id, :response]])
    end

    def survey_params
      params.require(:survey).permit(:author_id, :title, :description,
        questions_attributes: [:id, :question_order, :question_type, :description, :question_text, :required,
          answers_attributes: [:question_id, :taker_id, :response]])
    end
end
