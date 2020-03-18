Rails.application.routes.draw do
  get 'test', to: 'welcome#test'
  get 'index', to: 'welcome#index'
  root 'welcome#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
