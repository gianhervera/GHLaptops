class ProductOrder < ApplicationRecord
  belongs_to :Product
  validates :order_id, :product_id, presence: true
end
