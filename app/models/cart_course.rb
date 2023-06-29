class CartCourse < ApplicationRecord
  belongs_to :cart
  belongs_to :enrolled_courses, class_name: "Course", foreign_key: "course_id"
  # teacher assotiation
  belongs_to :created_courses,  class_name: "Course", foreign_key: "course_id"
end
