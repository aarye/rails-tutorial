Rails.application.routes.draw do
  get 'use/name:string' => 'use#name'
  get 'use/email:string' => 'use#string'

  root 'static_pages#home'
  get  'help' => 'static_pages#help'
  get  'about' => 'static_pages#about'
  get  'contact' => 'static_pages#contact'
  get  'signup' => 'users#new'
end
