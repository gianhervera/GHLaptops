class Role < ApplicationRecord
  has_many :user
  validates :role_id, :name, presence: true
end
