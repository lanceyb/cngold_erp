class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable and :omniauthable
  # :registerable, :rememberable
  devise :database_authenticatable, :timeoutable, :recoverable, :trackable, :validatable
end
