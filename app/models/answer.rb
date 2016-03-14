class Answer < ActiveRecord::Base
  belongs_to :taker
  belongs_to :question
  validates :response, presence: true, if: :required?

  def required?
    question.required
  end
end
