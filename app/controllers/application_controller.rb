class ApplicationController < ActionController::Base
  class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(:email, :password, :password_confirmation)
      end
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :current_password) }
    end
  end
end
