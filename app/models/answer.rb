class Answer < ActiveRecord::Base
  belongs_to :taker
  belongs_to :question
<<<<<<< HEAD
  validate :submit_require


  def submit_require
    Answer.all.any? { |a| a.response.blank? && a.question.required }
    errors.add(:required, "Survey cannot be submitted without completing all required questions")
  end

=======

  validates :response, presence: true, if: :required?

 def required?
   question.required
 end
>>>>>>> 5828b32b3cd37ac06cfcc3e201459e67ace0faac
end
