Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  
	
	mount API::Base, at: '/'
	mount GrapeSwaggerRails::Engine, at: "/documentation"
end
