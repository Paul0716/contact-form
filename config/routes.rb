Rails.application.routes.draw do |map|
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contact/list'
  get 'contact/new'
  post 'contact/new'
  post 'contact/create'
  get 'contact/thankyou'
  # simple captcha
  # map.simple_captcha '/simple_captcha/:action', :controller => 'simple_captcha'
  resources :user
end