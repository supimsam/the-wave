class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def after_sign_up_path_for(resource)
	users_path(current_user.id)
  end

  def after_sign_in_path_for(resource)
  users_path(current_user.id)
  end

  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) << :name 
   devise_parameter_sanitizer.for(:sign_up) << :title 
   devise_parameter_sanitizer.for(:sign_up) << :avatar
   devise_parameter_sanitizer.for(:sign_up) << :description
   devise_parameter_sanitizer.for(:account_update) << :name
   devise_parameter_sanitizer.for(:account_update) << :title
   devise_parameter_sanitizer.for(:account_update) << :avatar
   devise_parameter_sanitizer.for(:account_update) << :description
  end
end
