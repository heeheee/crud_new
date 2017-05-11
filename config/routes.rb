Rails/application/routes.draw do
root "home#index"
  get 'home/index'
  get 'home/create'
  post 'home/new'
  post 'home/edit'
  get 'home/update/:post_id' => 'home#update'
  get 'home/read/:post_id' => 'home#read'
  get 'home/delete/:post_id' => 'home#delete'
  post 'home/comment'
  get 'home/comment_delete/:comment_id' => 'home#comment_delete'