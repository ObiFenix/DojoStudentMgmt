class Dojo < ApplicationRecord
  belongs_to :user

  has_many  :users, :dependent => :destroy
  has_many  :students, :dependent => :destroy
  has_many  :students_added, :through => :users, :source => :students

  validates :street, :city, presence: true, length: { minimum: 2 }
  validates :branch, uniqueness: { case_sensitive: false }
end
