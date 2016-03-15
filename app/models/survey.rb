class Survey < ActiveRecord::Base
  has_many :takers
  has_many :questions
  has_many :answers, through: :questions
  belongs_to :author

  validates :title, presence: true

  accepts_nested_attributes_for :questions,
      reject_if: :all_blank

  accepts_nested_attributes_for :takers
end
