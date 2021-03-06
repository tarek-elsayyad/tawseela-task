Rails.application.routes.draw do
    namespace :api, defaults: {format: :json} do
      namespace :v1, defaults: {format: :json} do

        resources :trips do
          resources :trip_check_points, except: [:update,:destroy]# as user won't be able to update
        end
        resources :users
        # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      end
    end
end
