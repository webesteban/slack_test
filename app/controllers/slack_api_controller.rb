class SlackApiController < ApplicationController
	respond_to?  :json
	
	def command

		response = "#{params[:channel_id]}/#{params[:channel_name]}/#{params[:channel_name]}"

		render :text => response
  	end

  	def save_phone

  		if Channel.exists?(id_channel: params[:channel_id])

			channel = Channel.find_by id_channel: params[:channel_id]
  			phone = Phone.new(channel: channel, phone: params[:text])
			phone.save

		else
		  	channel = Channel.new(id_channel: params[:channel_id],name: params[:channel_name])		  	
		  	channel.save
  			phone = Phone.new(channel: channel, phone: params[:text])
			phone.save

		end

		

		render :text => "Save Phone!"
  	end

  	def list_phones

		@channels = Channel.all

		#@phones = @channels.phones
  	end

end
