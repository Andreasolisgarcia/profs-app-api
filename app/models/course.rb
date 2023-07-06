class Course < ApplicationRecord
  before_create :check_teacher_role

  belongs_to :user
  has_many :cart_courses
  has_many :carts, through: :cart_courses
  has_many :orders, through: :carts

  def check_teacher_role
    unless user.has_role?('Teacher')
      errors.add(:user,  "The user must have the 'Teacher' role to create a course.")
      throw :abort
    end
  end
end
