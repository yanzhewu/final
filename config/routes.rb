Rails.application.routes.draw do

  root 'websites#index'

  resources :websites

end
