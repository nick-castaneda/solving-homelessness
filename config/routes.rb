Rails.application.routes.draw do

  root 'donations#home'


  get '/food' => 'donations#food_page', as: :donations

  get '/food/donate' => 'donations#new', as: :new
  post 'food' => 'donations#create'




end
