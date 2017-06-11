class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :email])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name,{pictures: []}, :company_name, :company_registration, :phone_no, :email, :password, :password_confirmation]) 
  devise_parameter_sanitizer.permit(:account_update, keys: [:name, {pictures: []}, :company_name, :company_registration, :phone_no, :email, :password, :password_confirmation, :current_password])
end
  
end
