class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :first_name
  devise_parameter_sanitizer.for(:sign_up) << :last_name
  devise_parameter_sanitizer.for(:sign_up) << :title
  devise_parameter_sanitizer.for(:sign_up) << :division
  devise_parameter_sanitizer.for(:sign_up) << :expertise

  devise_parameter_sanitizer.for(:account_update) << :first_name
  devise_parameter_sanitizer.for(:account_update) << :last_name
  devise_parameter_sanitizer.for(:account_update) << :title
  devise_parameter_sanitizer.for(:account_update) << :division
  devise_parameter_sanitizer.for(:account_update) << :expertise

end
end
