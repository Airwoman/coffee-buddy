class SessionsController < ApplicationController

    skip_before_filter :authorise, :only => [:new, :create]
    before_filter :requires_no_session_user, :except => [:destroy]

    def new
      @user_session = Casein::AdminUserSession.new
    end

    def create
      @user_session = Casein::AdminUserSession.new params[:user_session]
      if @user_session.save
        redirect_back_or_default :controller => :home, :action => :index
      else
        render :action => :new
      end

    end

    def destroy
      current_user_session.destroy
      redirect_back_or_default root_path
    end

  private
    def requires_no_session_user
      if current_user
        redirect_to :controller => :casein, :action => :index
      end
    end


  end
