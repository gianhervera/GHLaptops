class SearchesController < ApplicationController
   def show
    @search = Search.find(params[:id])
  end

  def new
      @search = Search.new
    # @categories = Product.distinct.pluck(category_url)
    end
    def create
      @search = Search.create(search_params)
      redirect_to @search
    end

    private

    def search_params
      params.require(:search).permit(:keywords, :category, :min_price, :max_price)
    end
end
