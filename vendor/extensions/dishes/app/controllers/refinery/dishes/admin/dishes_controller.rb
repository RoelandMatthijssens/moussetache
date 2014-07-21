module Refinery
  module Dishes
    module Admin
      class DishesController < ::Refinery::AdminController

        crudify :'refinery/dishes/dish',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
