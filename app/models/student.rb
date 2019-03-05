class Student < ApplicationRecord
  belongs_to :dojo
  belongs_to :user
  validates  :first_name, :last_name, :email, presence: true, length: { in: 2..25 }
  validates  :email, uniqueness: { case_sensitive: false }

  def fullname
    return "#{self.first_name.capitalize}" +"  "+ "#{self.last_name.capitalize}"
  end
end
