Rails.application.routes.draw do
  resources :profiles

  resources :products do 
      member do 
    delete 'delete_image/:image_id', to: 'products#delete_image', as: 'delete_image'
    end
  end
end
