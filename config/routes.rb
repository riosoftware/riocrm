Rails.application.routes.draw do
  resources :contacts
  # post 'customers/:id/edit' => 'customers#edit'
  root to: 'contacts#index'
end
