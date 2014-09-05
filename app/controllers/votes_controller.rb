class VotesController < ApplicationController

	before_filter :authorize, only: [:create]

	def create
		@vote = Vote.new(:link_id => params[:link_id])
		@vote.save
		redirect_to "/"
	end

end
