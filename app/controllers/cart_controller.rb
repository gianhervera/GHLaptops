class CartController < ApplicationController
  def create
    id = params[:id].to_i
    unless session[:shopping_cart] << id unless session[:shopping_cart].include?(id)
     flash[:notice] = "Added to cart."
    end
    redirect_to root_path
  end

  def destroy

  end
end
