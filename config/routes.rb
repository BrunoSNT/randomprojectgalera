Rails.application.routes.draw do
  devise_for :users
  resources :abilities
  resources :dices
  resources :themes
  resources :items
  resources :inventories
  resources :adventures
  resources :characters
  resources :factions
  resources :alignments
  resources :professions

  namespace :themes do
    resource  :adventures
    namespace :adventures do
      resources :factions
      resources :professions
      resources :items
      resources :characters
      namespace :characters do
        resources :inventories
        resources :items
        resources :abilities
      end
    end
  end

  get 'dashboard/index'
  get 'dashboard/masterscreen'
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
