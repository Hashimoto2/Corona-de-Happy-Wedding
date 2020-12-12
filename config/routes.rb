Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#top'
  get 'articles/about' => 'articles#about', as: 'about'
  get 'articles/thanx' => 'articles#thanx', as: 'thanx'
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
  resources :customers, only: [:show, :new, :create, :edit, :update, :destroy]
end
