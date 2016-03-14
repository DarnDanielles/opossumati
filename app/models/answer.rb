class Answer < ActiveRecord::Base
  belongs_to :taker
  belongs_to :question
  validate :submit_require


  def submit_require
    Answer.all.any? { |a| a.response.blank? && a.question.required }
    errors.add(:required, "Survey cannot be submitted without completing all required questions")
  end

end
