class HomeController < ApplicationController
  def index
    @shops = Shop.all
    @products = Product.all
  end
  def shop_show
    @shop = Shop.find params[:id]
  end


end
