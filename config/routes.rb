Rails.application.routes.draw do
 #後から記述
 root "books#top"
 #ここまで  
  resources :books
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
