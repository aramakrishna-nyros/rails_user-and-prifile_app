class HomeController < ApplicationController
	def index
		if user_signed_in?
			redirect_to :controller => 'profiles', :action => 'index'
		end
	end

end
