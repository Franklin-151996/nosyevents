class HomeController < ApplicationController

	layout 'application'
	
	def index
	end

	def destroy
		sign_out(current_user)
		redirect_to root_path
	end
end
