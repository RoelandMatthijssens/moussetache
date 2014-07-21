module Refinery
  module Dishes
    class Dish < Refinery::Core::BaseModel
      self.table_name = 'refinery_dishes'

      attr_accessible :name, :price, :promotion, :photo_id, :description, :position

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
