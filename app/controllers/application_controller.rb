class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :comfigure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_samitizer.permit(:sign_up, key: [:name])
  end

end
