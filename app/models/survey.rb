class Survey < ActiveRecord::Base
  has_many :takers
  belongs_to :author
end
