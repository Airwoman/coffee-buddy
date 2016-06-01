class HomeController < ApplicationController
  def index
    @shops = Shop.take(8)
    @products = Product.take(10)
  end
  def shop_show
    @shop = Shop.find params[:id]
  end
end
