class Course < ApplicationRecord

  belongs_to :user
  has_many :cart_courses
  has_many :carts, through: :cart_courses
  has_many :orders, through: :carts

  validate :teacher_role_required, on: :create

  private

  def teacher_role_required
    unless user.has_role?('Teacher')
      errors.add(:user, "must have the 'Teacher' role to create a course.")
    end
  end
end
