class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  # Set default role
  after_initialize :set_default_role, if: :new_record?

  def receptionist?
    role == 'receptionist'
  end

  private

  def set_default_role
    self.role ||= 'receptionist'
  end
end

# class User < ApplicationRecord
#   # Devise modules
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable
# end