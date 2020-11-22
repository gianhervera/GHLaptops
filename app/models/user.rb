class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  validates :first_name, :last_name, :email, :phone, :username, :password, :address, :role_id, presence: true
  validates :email, :username, uniqueness: true

end
