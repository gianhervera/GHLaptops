class ProductsController < ApplicationController
  before_action :add_index_breadcrumb, only: [:show, :new, :edit]
  def index
  @pagy, @products = pagy(Product.search(params[:search]))
    add_breadcrumb('Products')
  end

  def show
    @product = Product.find(params[:id])
    add_breadcrumb(@product.product)
  end

  def add_index_breadcrumb
    add_breadcrumb('Products', products_path)
  end

end
