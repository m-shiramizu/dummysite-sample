Rails.application.routes.draw do
  get 'home/index'
  get 'home/show'
#  get 'home/show_meminfo'
#  get 'home/get_accesstoken/:code/:id' => "home#get_accesstoken"
  
  root to: 'home#index'

end
