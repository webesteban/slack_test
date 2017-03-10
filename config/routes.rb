Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/command'                         	  => 'slack_api#command'

  post '/save_phone'                          => 'slack_api#save_phone'

  post '/list_phones'                         => 'slack_api#list_phones'
  
end
