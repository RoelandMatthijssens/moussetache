module Refinery
  module Dishes
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Dishes

      engine_name :refinery_dishes

      initializer "register refinerycms_dishes plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "dishes"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.dishes_admin_dishes_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/dishes/dish',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Dishes)
      end
    end
  end
end
