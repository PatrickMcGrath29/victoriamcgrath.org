class User < ApplicationRecord
  enum role: [:user, :admin, :super_admin]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    puts self.inspect
    self.role ||= :user
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
