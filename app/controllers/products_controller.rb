class ProductsController < ApplicationController

  def index
  @pagy, @products = pagy(Product.search(params[:search]))

  end

  def show
    @product = Product.find(params[:id])
  end
end
