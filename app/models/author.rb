class Author < ActiveRecord::Base
  has_many :surveys

  validates :password, prescense: true
  validates :email, prescense: true, uniqueness: true
end
