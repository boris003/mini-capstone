class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    # flash[:warning] = "you need to log in first"
    redirect_to '/login' unless current_user
  end

  def authenticate_admin!
    # flash[:danger] = "You shall not pass!"
    # flash[:warning] = "This action requires you to have an admin right."
    redirect_to '/' unless current_user && current_user.admin
  end

end
