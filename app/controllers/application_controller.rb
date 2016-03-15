class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def logged_in?
    redirect_to login_path, notice: "Please login first" unless session[:user_id]
  end

  # def unique_question_order
  #   if Question.where(survey.id == question.survey_id)
  #     flash.now[:alert] = "Question order is taken"
  #   end
  # end


end
