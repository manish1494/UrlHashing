Rails.application.routes.draw do
  root to: 'home#index'

  #post 'home/index'


  post "/links"=> 'links#create'

  get "/:short_url"=> 'links#show'
  #root to: 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
