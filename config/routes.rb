Rails.application.routes.draw do

  get 'home/index'
  post 'home/create'
  get 'home/photo/:id' => 'home#photo'
  get 'home/destroy/:id' => 'home#destroy'
  get 'home/read/:id' => 'home#read'
  get 'home/update/:id' => 'home#update'
  get 'home/real_update/:id' => 'home#real_update'
  get 'home/read/:post_id/comment_create' => 'home#comment_create'
  get 'home/read/:post_id/comment_destroy/:id' => 'home#comment_destroy'
  get 'home/:post_id/reply_create' => 'home#reply_create'
  get 'home/:post_id/reply_destroy/:id' => 'home#reply_destroy'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
