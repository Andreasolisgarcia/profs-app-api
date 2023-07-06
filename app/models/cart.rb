class Cart < ApplicationRecord
  before_create :check_student_role
  
  belongs_to :user
  has_one :order

  has_many :cart_courses
  has_many :courses, through: :cart_courses

  def check_student_role
    unless user.has_role?('Student')
      errors.add(:user, "The user must have the 'Student' role to place an order.")
      throw :abort
    end
  end
end
