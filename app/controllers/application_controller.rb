class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :initialize_session
  helper_method :cart
  before_action :set_breadcrumbs

  def add_breadcrumb(label, path = nil)
    @breadcrumbs << {
      label: label,
      path: path,
    }
  end
  def set_breadcrumbs
    @breadcrumbs = []
  end

  private

  def initialize_session
    session[:shopping_cart] ||= []
  end
  def cart
    Product.find(session[:shopping_cart])
  end
end
