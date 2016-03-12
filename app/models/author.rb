class Author < ActiveRecord::Base
  has_many :surveys

  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
end
