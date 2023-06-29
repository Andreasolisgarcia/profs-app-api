class CreateCartCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_courses do |t|
      t.belongs_to :cart, index: true
      t.belongs_to :course, index: true

      t.timestamps
    end
  end
end
