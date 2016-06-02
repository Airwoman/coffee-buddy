class HomeController < ApplicationController
  def index
    @shops = Shop.take(12)
    @products = Product.take(5)
    @meetings = Meeting.take(5)
  end
  def shop_show
    @shop = Shop.find params[:id]
  end

  def like
    if current_user
      current_user.shops << Shop.find(params[:shop_id])
      redirect_to referer_url
    else
      session[:return_to] = referer_url
      redirect_to login_path
    end

  end

  def unlike
    current_user.shops.delete(Shop.find(params[:shop_id]))
    redirect_to referer_url
  end





end
