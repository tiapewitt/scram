class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include CanCan::ControllerAdditions

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protect_from_forgery with: :exception

  before_filter :authenticate_user!


  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :current_password, :first_name, :last_name, :username, :avatar) }
  	devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :current_password, :first_name, :last_name, :username, :avatar) }
  end
end
