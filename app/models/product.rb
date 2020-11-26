class Product < ApplicationRecord
  has_many :product_orders
  has_many :order
  validates :product, :type_name, :company, :inches, :screen_resolution,
            :CPU, :RAM, :memory, :GPU, :price, presence: true
  has_one_attached :image
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  def self.search(search)
    if search
     where(["company LIKE ?", "%#{:search}%"])
  end
    all
end
end
