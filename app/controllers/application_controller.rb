class ApplicationController < ActionController::Base
  protect_from_forgery
  force_ssl
  config.assets.initialize_on_precompile = false

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end