class WolcomeController < ApplicationController
  def index
  end

  def response
  	response = params

	render :text => response
  end
end
