class ProfilesController < ApplicationController

	def index
		@profiles = Profile.all.paginate(:page => params[:page], :per_page => 10)
		
	end 
end
