Rails.application.routes.draw do

  resources :pacients
  post 'pacients/new', to: 'pacients#new'
  root to: 'home#index'
  devise_for :interviewers

  authenticated :interviewers do
  	get 'interviewers/sign_in', to: 'pacients#index'
  	get 'interviewers/sign_up', to: 'pacients#index'
  	post 'interviewers/sign_in', to: 'pacients#index'
  	post 'interviewers/sign_up', to: 'pacients#index'
    get 'pacients/', to: 'pacients#index'
  	post '/', to: 'home#index'
    get '/', to: 'home#index'
  	resources :pacients
    root to: 'pacients#index'
  end
  post '/', to: 'home#index'

end
