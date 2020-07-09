class HomeController < ApplicationController

	layout 'application'
	
	def index
		@post = Post.limit(4)
		@posts = Array.new
		@post.each do |val|
			@posts.push(val)
		end
	end

	def destroy
		sign_out(current_user)
		redirect_to root_path
	end
end
