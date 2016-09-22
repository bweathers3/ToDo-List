Rails.application.routes.draw do

get 'about' => 'welcome#about'

root 'welcome#index'

namespace :api, defaults: { format: :json } do
     resources :users
end

end
