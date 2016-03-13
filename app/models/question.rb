class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :survey

  validates :question_text, presence: true
  validates :question_order, presence: true
  # validate :unique_question_order

  def unique_question_order
    if Question.where(survey.id == question.survey_id)
      flash.now[:alert] = "Question order is taken"
    end
  end
end
