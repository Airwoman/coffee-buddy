class UsersController < ApplicationController
  def new
    @user = Casein::AdminUser.new
  end
  def create
    @user = Casein::AdminUser.new user_params
    @user.access_level = $CASEIN_USER_ACCESS_LEVEL_USER

    if @user.save
      flash[:notice] = "An email has been sent to " + @user.name + " with the new account details"
      redirect_to root_path
    else
      flash.now[:warning] = "There were problems when trying to create a new user"
      render :action => :new
    end
  end

  def show
    @user = Casein::AdminUser.find params[:id]
  end

  def edit
    @user = Casein::AdminUser.find params[:id]
  end

  def update
    @user = Casein::AdminUser.find params[:id]
    @user.update user_params
    redirect_to root_path
    # if @user.update_attributes user_params
    #   flash[:notice] = @user.name + " has been updated"
    # else
    #   flash.now[:warning] = "There were problems when trying to update this user"
    #   render :action => :show
    #   return
    # end
  end

  private
  def user_params
    params.require(:user).permit(:login, :name, :email, :avatar, :time_zone, :access_level, :password, :password_confirmation)
  end


end
