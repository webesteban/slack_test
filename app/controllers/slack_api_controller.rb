class SlackApiController < ApplicationController

	
	def command

		response = "#{params[:channel_id]}/#{params[:channel_name]}/#{params[:channel_name]}"

		render :text => response
  	end

  	def save_phone

		response = "#{params[:channel_id]}/#{params[:channel_name]}/#{params[:channel_name]}"

		render :text => response
  	end

  	def list_phones

		response = "#{params[:channel_id]}/#{params[:channel_name]}/#{params[:text]}"

		render :text => response
  	end

end
