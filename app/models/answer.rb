class Answer < ActiveRecord::Base
  belongs_to :taker
  belongs_to :question
end
