class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :initialize_session
  helper_method :cart


  private

  def initialize_session
    session[:shopping_cart] ||= []

  end
  def cart
    Product.find(session[:shopping_cart])
  end
  def visit_count

  end
end
