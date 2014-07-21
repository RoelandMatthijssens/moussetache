Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :dishes do
    resources :dishes, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :dishes, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :dishes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
