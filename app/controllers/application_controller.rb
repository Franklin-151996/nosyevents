class ApplicationController < ActionController::Base
	before_action :configure_devise_parametres, if: :devise_controller?

	def configure_devise_parametres
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :image)}
	end
end
