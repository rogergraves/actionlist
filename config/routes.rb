Rails.application.routes.draw do
  get 'welcome', to: 'welcome#index'
  get 'welcome/show', to: 'welcome#show'
  post 'welcome', to: 'welcome#create'
  get 'checklists/:uri', to: 'checklists#show'
  get 'checklists', to: 'checklists#show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
