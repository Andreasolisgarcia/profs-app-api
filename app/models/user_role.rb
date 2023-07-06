class UserRole < ApplicationRecord
  before_create :users_role_exist?

  belongs_to :user
  belongs_to :role

  def users_role_exist?
    if user.has_role?(role.role)
      errors.add(:base, "The user already has the #{role.role} role.")
      throw :abort
    end
  end
end
