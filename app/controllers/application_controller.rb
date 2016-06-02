class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def authorise
    unless current_user
      session[:return_to] = request.fullpath
      redirect_to login_path
      return false
    end
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = Casein::AdminUserSession.find
  end

  def current_user
    return @session_user if defined?(@session_user)
    @session_user = current_user_session && current_user_session.admin_user
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end

  def referer_url
    request.referer || root_path
  end
end
