class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  ADMIN = 'admin'.freeze
  SUPER_ADMIN = 'super_admin'.freeze

  def admin?
    role == ADMIN
  end

  def super_admin?
    role == SUPER_ADMIN
  end

end
