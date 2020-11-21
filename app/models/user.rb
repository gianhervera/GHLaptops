class User < ApplicationRecord
  belongs_to :role
  validates :first_name, :last_name, :email, :phone, :username, :password, :address, :role_id, presence: true
  validates :email, :username, uniqueness: true

end
