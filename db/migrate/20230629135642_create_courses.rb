class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :description
      t.float :price
      t.string :image_url
      t.integer :duration
      t.boolean :is_online
      t.float :additional_cost

      t.timestamps
    end
  end
end
