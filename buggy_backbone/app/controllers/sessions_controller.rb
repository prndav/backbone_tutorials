class SessionsController < ApplicationController
	def create
		@user = login params[:username], params[:password] # login - method privided by sorcery gem
		render status: 422 unless @user
	end	

	def destroy
		logout
	end
end