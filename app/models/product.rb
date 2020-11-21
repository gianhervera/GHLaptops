class Product < ApplicationRecord
  has_many :product_orders
  has_many :order
  validates :product, :type_name, :company, :inches, :screen_resolution,
            :CPU, :RAM, :memory, :GPU, :price, presence: true
end
