class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter  :configure_permitted_parameters, if: :devise_controller?

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:accout_update, keys: [:name])

  end

end
