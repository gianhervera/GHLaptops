class Order < ApplicationRecord
  belongs_to :product
  validates :order_id, :product_id, :customer_id, :quantity, :product, presence: true
end
