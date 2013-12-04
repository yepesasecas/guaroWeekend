class LandingController < ApplicationController
	def index
		@user = User.new
		@count = User.all.count
		@count += 35
	end

end
