Rails.application.routes.draw do
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'sessions/new'
  post 'sessions/create'
  delete 'sessions/destroy'
end
