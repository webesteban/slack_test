class WolcomeController < ApplicationController
  def index
  end

  def register
  	response = "#{params[:team_id]}/#{params[:channel_name]}/#{params[:channel_name]}"

	render :text => response
  end
end
