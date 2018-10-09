Rails.application.routes.draw do
  root 'welcome#index'

  post 'contact', to: 'welcome#contact'
end
