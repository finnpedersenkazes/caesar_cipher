Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'ciphers#home'
  get '/encrypt', to: 'ciphers#encryption'
  get '/team', to: 'ciphers#team'

end
