class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :adresse, optional: true
  has_many :user_roles
  has_many :roles, through: :user_roles

  #Student associations
  has_many :orders
  has_many :carts
  has_many :cart_courses, through: :carts
  has_many :enrolled_courses, class_name:"Course", through: :cart_courses

  #teacher associations
  has_many :created_courses, class_name:"Course"

  def add_role(role_to_assign)
    role = Role.find_by(role: role_to_assign)
    UserRole.create!(user: self ,role: role)
  end
        
  def role_array
    self.roles.pluck(:role)
  end
        
  def has_role?(role)
    role_array.include?(role)
  end

end
