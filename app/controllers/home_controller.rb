class HomeController < ApplicationController
  def index
    @shops = Shop.take(8)
    @products = Product.take(10)
  end
  def shop_show
    @shop = Shop.find params[:id]
  end

  def like
    referer = (request.referer || root_path)

    if current_user
      current_user.shops << Shop.find(params[:shop_id])
      redirect_to referer
    else
      session[:return_to] = referer
      redirect_to login_path
    end

  end

  def unlike
    referer = (request.referer || root_path)
    current_user.shops.delete(Shop.find(params[:shop_id]))
    redirect_to referer
  end

end
