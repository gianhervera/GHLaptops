class ProductsController < ApplicationController
  def index
    @products = Product.order("company ASC")
  end

  def show
  end
end
