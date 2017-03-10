class SlackApiController < ApplicationController

	
	def command


		render :text => params[:channel_id]
  	end

end
