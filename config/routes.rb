Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'static_pages/home'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'# , as:'helf' -> helf_path 
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'    #  get 'users/new' -> get users_new_url
end
  