class Cart < ApplicationRecord  
  belongs_to :user
  has_one :order

  has_many :cart_courses
  has_many :courses, through: :cart_courses

  validate :student_role_required, on: :create

  private

  def student_role_required
    unless user.has_role?('Student')
      errors.add(:user, "must have the 'Student' role to place an order.")
    end
  end
end
