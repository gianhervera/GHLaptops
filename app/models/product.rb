class Product < ApplicationRecord
  validates :product, :type_name, :company, :inches, :screen_resolution,
            :CPU, :RAM, :memory, :GPU, :price, presence: true
end
