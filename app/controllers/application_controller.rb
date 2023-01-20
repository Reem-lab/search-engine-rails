class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  after_action :track_action

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
  end

  def track_action
    ahoy.track 'Ran action',
         request.path_parameters
  end
end
