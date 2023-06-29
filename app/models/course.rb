class Course < ApplicationRecord
  belongs_to :user
  has_many :cart_courses
  has_many :carts, through: :cart_courses
  has_many :orders, through: :carts
end
