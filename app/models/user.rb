class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name,  presence: true, length: { in: 2..25 }

  belongs_to :dojo
  has_many :students # all availsable students in a dojo
  # has_many :dojos_added, :through => :dojos, :source => :dojos
  # has_many :students_added, through: :joins, source: :students # students added by a manager

  def username
    return self.email.split('@')[0].capitalize
  end

  def fullname
    return "#{self.first_name.capitalize}" +"  "+ "#{self.last_name.capitalize}"
  end
end
