class LandingController < ApplicationController
	def index
		@user = User.new
		@count = User.all.count
	end

end
