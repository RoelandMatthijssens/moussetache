module Refinery
  module Dishes
    class DishesController < ::ApplicationController

      before_filter :find_all_dishes
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @dish in the line below:
        present(@page)
      end

      def show
        @dish = Dish.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @dish in the line below:
        present(@page)
      end

    protected

      def find_all_dishes
        @dishes = Dish.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/dishes").first
      end

    end
  end
end
